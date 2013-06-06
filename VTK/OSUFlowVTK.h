	#ifndef OSUFLOW_VTK
#define OSUFLOW_VTK

#include <assert.h>

#include <vtkDataSet.h>
#include <vtkSmartPointer.h>
#include <vtkXMLStructuredGridReader.h>
#include <vtkStructuredGrid.h>
#include <vtkXMLImageDataReader.h>
#include <vtkImageData.h>
#if 0
#include <vtkXMLFileReadTester.h>
#include <vtkXMLGenericDataObjectReader.h>
#include <vtkMultiBlockDataGroupFilter.h>
#include <vtkGenericDataObjectReader.h>
#endif

#include <Field.h>
#include "OSUFlow.h"
#include "VectorFieldVTK.h"

#ifdef _OPENMP
#include <omp.h>
#endif


class OSUFlowVTK: public OSUFlow
{
protected:
	vtkSmartPointer<vtkImageData> sImageData;
public:
	// openmp support
	inline void initOpenMP(int nproc) {
#ifdef _OPENMP
		omp_set_num_threads(nproc);
		printf("Openmp max threads = %d\n", omp_get_max_threads());
#endif
	}

	inline void setData(vtkDataSet* input)
	{
		this->flowField = new VectorFieldVTK(input);

		// entire data, static
		this->flowField->Boundary(gMin, gMax);
		printf("boundary: %f %f %f %f %f %f\n", gMin[0], gMax[0], gMin[1], gMax[1], gMin[2], gMax[2]);
		lMin = gMin;
		lMax = gMax;
		MinT = 0;
		MaxT = 0;

		has_data = true;
	}

	inline bool getHasData() { return this->has_data; }

	virtual void LoadData(const char* fname, bool bStatic, bool deferred = false)
	{	OSUFlow::LoadData(fname, bStatic, deferred);}

	virtual void LoadData(const char* fname, bool bStatic, VECTOR3 pMin, VECTOR3 pMax, bool deferred = false)
	{ assert(false); OSUFlow::LoadData(fname, bStatic, pMin, pMax, deferred); }

	virtual void LoadData(const char* fname, bool bStatic, VECTOR3 pMin,
		VECTOR3 pMax, int min_t, int max_t, bool deferred = false)
	{ assert(false); OSUFlow::LoadData(fname, bStatic, pMin, pMax, min_t, max_t, deferred); }

	virtual void LoadData(const char* fname, float *sMin, float *sMax,
		float *dim, int min_t, int max_t, DataMode mode,
		float **data = NULL)
	{ assert(false); OSUFlow::LoadData(fname, sMin, sMax, dim, min_t, max_t, mode, data); }

	virtual void LoadData(char **dataset_files, int num_dataset_files,
		float *sMin, float *sMax, float *dim, int min_t, int max_t,
		DataMode mode, float **data = NULL)
	{ assert(false); OSUFlow::LoadData(dataset_files, num_dataset_files, sMin, sMax, dim, min_t, max_t, mode, data); }

	//////////////////////////////////////////////////////////////////////////
	// sReal : does not include ghost cells
	//////////////////////////////////////////////////////////////////////////
	virtual void LoadData(char **dataset_files, int num_dataset_files,
			       float *sMin, float *sMax, int* sRealMin, int* sRealMax,
			       float *dim, int min_t, int max_t, DataMode mode,
			       float **data = NULL)
	{
		// currently: load in VTI data format
		printf("sMin: %f %f %f\n", sMin[0], sMin[1], sMin[2]);
		printf("sMax: %f %f %f\n", sMax[0], sMax[1], sMax[2]);
		printf("sRealMin: %d %d %d\n", sRealMin[0], sRealMin[1], sRealMin[2]);
		printf("sRealMax: %d %d %d\n", sRealMax[0], sRealMax[1], sRealMax[2]);

		this->dataset_files = dataset_files;
		this->num_dataset_files = num_dataset_files;
		bStaticFlow = false;


		lMin.Set(sMin[0], sMin[1], sMin[2]);
		lMax.Set(sMax[0], sMax[1], sMax[2]);

		if (max_t >= min_t) {
			numTimesteps = max_t - min_t + 1;
			MinT = min_t; MaxT = max_t;
		}
		else { // defaults to 1 time step
			numTimesteps = 1;
			MinT = MaxT = min_t;
		}

		if (numTimesteps > num_dataset_files) {
			fprintf(stderr, "[OSUFlowVTK] Error: time step range larger than number of files\n");
			exit(1);
		}

		float **ppData = new float *[numTimesteps];
		for (int t=MinT; t<=MaxT; t++)
		{
			vtkXMLImageDataReader *reader = vtkXMLImageDataReader::New();
			reader->SetFileName(dataset_files[t]); //TODO: now assuming timesteps always start from 0
			reader->UpdateInformation();

			// set local extent
			int extent[6];
			extent[0] = sMin[0]; extent[1] = sMax[0];
			extent[2] = sMin[1]; extent[3] = sMax[1];
			extent[4] = sMin[2]; extent[5] = sMax[2];
			printf("Set Extent: %d %d %d %d %d %d\n", extent[0], extent[1], extent[2], extent[3], extent[4], extent[5]);
			reader->SetUpdateExtent(0, extent);
			reader->Update();

			int *ext = reader->GetOutput()->GetExtent();
			printf("Extent: %d %d %d %d %d %d\n", ext[0], ext[1], ext[2], ext[3], ext[4], ext[5]);

			vtkImageData *image = reader->GetOutput() ;

			// show content
			//data->PrintSelf(std::cout, vtkIndent(2));
			int numPoints = image->GetNumberOfPoints();

			// copy data
			float *pData = new float[numPoints*3];
			assert(pData);
			memcpy(pData, image->GetScalarPointer(), numPoints*12);

			ppData[t-MinT] = pData;

			//image->Delete();
			//reader->Delete();
		}

		InitFlowField(sMin, sMax, sRealMin, sRealMax, dim, min_t, max_t, mode, ppData);

		printf("File read\n");

#if 0 // unstructured
		//InitFlowField(sMin, sMax, sRealMin, sRealMax, dim, min_t, max_t, mode,data);

		vtkXMLStructuredGridReader *reader = vtkXMLStructuredGridReader::New();
		reader->SetFileName(dataset_files[0]); //TODO
		reader->UpdateInformation();

		// set local extent
		int extent[6];
		extent[0] = sMin[0]; extent[1] = sMax[0];
		extent[2] = sMin[1]; extent[3] = sMax[1];
		extent[4] = sMin[2]; extent[5] = sMax[2];
		printf("Set Extent: %d %d %d %d %d %d\n", extent[0], extent[1], extent[2], extent[3], extent[4], extent[5]);
		reader->SetUpdateExtent(0, extent);
		reader->Update();

		int *ext = reader->GetOutput()->GetExtent();
		printf("Extent: %d %d %d %d %d %d\n", ext[0], ext[1], ext[2], ext[3], ext[4], ext[5]);

		// set data
		vtkStructuredGrid *data = reader->GetOutput();
		this->flowField = new VectorFieldVTK(data);

		reader->Delete();

		VECTOR3 minB, maxB;
		this->flowField->Boundary(minB, maxB);

		break;
#endif

		has_data = true;

	}
#if 0
	vtkMultiBlockDataSet *loadVTKData(const char *fileName)
	{
	    vtkXMLFileReadTester *vtkXMLFormatFileChecker = vtkXMLFileReadTester::New();

	    vtkXMLFormatFileChecker->SetFileName(fileName);

		if (vtkXMLFormatFileChecker->TestReadFile() > 0) {
			//Logger.getLogger(getClass().getName()).log(Level.INFO, "[{0}] is of type [{1}]",
			//		new Object[] { fileName, vtkXMLFormatFileChecker.GetFileDataType() });

			vtkXMLGenericDataObjectReader *vtkXMLFileReader = vtkXMLGenericDataObjectReader::New();

			vtkXMLFileReader->SetFileName(fileName);
			vtkXMLFileReader->Update();

			if (vtkXMLFileReader->GetOutput()->IsA("vtkMultiBlockDataSet")) {
				return vtkXMLFileReader->GetOutput();
			} else {
				vtkMultiBlockDataGroupFilter *makeMultiblock = vtkMultiBlockDataGroupFilter::New();

				makeMultiblock->SetInputConnection(vtkXMLFileReader->GetOutputPort());

				return makeMultiblock;
			}
		} else // legacy format
		{
			vtkGenericDataObjectReader *legacyVTKFileReader = vtkGenericDataObjectReader::New();

			legacyVTKFileReader->SetFileName(fileName);
			legacyVTKFileReader->Update();

			vtkMultiBlockDataGroupFilter *makeMultiblock = vtkMultiBlockDataGroupFilter::New();

			makeMultiblock->SetInput(legacyVTKFileReader->GetOutput());

			return makeMultiblock;
		}
	}
#endif
};

#endif //OSUFLOW_VTK
