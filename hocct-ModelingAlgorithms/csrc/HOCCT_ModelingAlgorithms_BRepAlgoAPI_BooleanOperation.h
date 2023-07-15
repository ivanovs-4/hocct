
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BuilderAlgo.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Algo.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"


#define BREPALGOAPI_BOOLEANOPERATION_DECL_VIRT(Type) \
void Type##_Build ( Type##_p p );


#define BREPALGOAPI_BOOLEANOPERATION_DECL_NONVIRT(Type) \



#define BREPALGOAPI_BOOLEANOPERATION_DECL_ACCESSOR(Type) \



#define BREPALGOAPI_BOOLEANOPERATION_DEF_VIRT(Type) \
void Type##_Build ( Type##_p p ) {\
((TYPECASTMETHOD(Type, Build, BRepAlgoAPI_BooleanOperation))(p))->Build();\
}


#define BREPALGOAPI_BOOLEANOPERATION_DEF_NONVIRT(Type) \



#define BREPALGOAPI_BOOLEANOPERATION_DEF_ACCESSOR(Type) \



BREPALGOAPI_BUILDERALGO_DECL_VIRT(BRepAlgoAPI_BooleanOperation)
BREPALGOAPI_ALGO_DECL_VIRT(BRepAlgoAPI_BooleanOperation)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepAlgoAPI_BooleanOperation)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepAlgoAPI_BooleanOperation)
BREPALGOAPI_BOOLEANOPERATION_DECL_VIRT(BRepAlgoAPI_BooleanOperation)
BREPALGOAPI_BOOLEANOPERATION_DECL_NONVIRT(BRepAlgoAPI_BooleanOperation)
BREPALGOAPI_BOOLEANOPERATION_DECL_ACCESSOR(BRepAlgoAPI_BooleanOperation)

#ifdef __cplusplus
}
#endif

