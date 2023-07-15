
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


#define BREPALGOAPI_FUSE_DECL_VIRT(Type) \



#define BREPALGOAPI_FUSE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepAlgoAPI_Fuse ( TopoDS_Shape_p S1, TopoDS_Shape_p S2 );


#define BREPALGOAPI_FUSE_DECL_ACCESSOR(Type) \



#define BREPALGOAPI_FUSE_DEF_VIRT(Type) \



#define BREPALGOAPI_FUSE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepAlgoAPI_Fuse ( TopoDS_Shape_p S1, TopoDS_Shape_p S2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S1)), from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define BREPALGOAPI_FUSE_DEF_ACCESSOR(Type) \



BREPALGOAPI_BOOLEANOPERATION_DECL_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_BUILDERALGO_DECL_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_ALGO_DECL_VIRT(BRepAlgoAPI_Fuse)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepAlgoAPI_Fuse)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_FUSE_DECL_VIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_FUSE_DECL_NONVIRT(BRepAlgoAPI_Fuse)
BREPALGOAPI_FUSE_DECL_ACCESSOR(BRepAlgoAPI_Fuse)

#ifdef __cplusplus
}
#endif

