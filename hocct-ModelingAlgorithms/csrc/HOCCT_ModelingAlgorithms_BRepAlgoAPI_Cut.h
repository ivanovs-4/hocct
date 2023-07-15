
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BooleanOperation.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BuilderAlgo.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Algo.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPALGOAPI_CUT_DECL_VIRT(Type) \



#define BREPALGOAPI_CUT_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepAlgoAPI_Cut ( TopoDS_Shape_p S1, TopoDS_Shape_p S2 );


#define BREPALGOAPI_CUT_DECL_ACCESSOR(Type) \



#define BREPALGOAPI_CUT_DEF_VIRT(Type) \



#define BREPALGOAPI_CUT_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepAlgoAPI_Cut ( TopoDS_Shape_p S1, TopoDS_Shape_p S2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S1)), from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define BREPALGOAPI_CUT_DEF_ACCESSOR(Type) \



BREPALGOAPI_BOOLEANOPERATION_DECL_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_BUILDERALGO_DECL_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_ALGO_DECL_VIRT(BRepAlgoAPI_Cut)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepAlgoAPI_Cut)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_CUT_DECL_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_CUT_DECL_NONVIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_CUT_DECL_ACCESSOR(BRepAlgoAPI_Cut)

#ifdef __cplusplus
}
#endif

