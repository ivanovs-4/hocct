
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepFilletAPI_LocalOperation.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPFILLETAPI_MAKEFILLET_DECL_VIRT(Type) \



#define BREPFILLETAPI_MAKEFILLET_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepFilletAPI_MakeFillet ( TopoDS_Shape_p S, ChFi3d_FilletShape FShape );\
void Type##_bRepFilletAPI_MakeFillet_Add_R1R2_E ( Type##_p p, double R1, double R2, TopoDS_Edge_p E );


#define BREPFILLETAPI_MAKEFILLET_DECL_ACCESSOR(Type) \



#define BREPFILLETAPI_MAKEFILLET_DEF_VIRT(Type) \



#define BREPFILLETAPI_MAKEFILLET_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepFilletAPI_MakeFillet ( TopoDS_Shape_p S, ChFi3d_FilletShape FShape ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), FShape);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepFilletAPI_MakeFillet_Add_R1R2_E ( Type##_p p, double R1, double R2, TopoDS_Edge_p E ) {\
((TYPECASTMETHOD(Type, bRepFilletAPI_MakeFillet_Add_R1R2_E, BRepFilletAPI_MakeFillet))(p))->Add(R1, R2, from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E)));\
}


#define BREPFILLETAPI_MAKEFILLET_DEF_ACCESSOR(Type) \



BREPFILLETAPI_LOCALOPERATION_DECL_VIRT(BRepFilletAPI_MakeFillet)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepFilletAPI_MakeFillet)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepFilletAPI_MakeFillet)
BREPFILLETAPI_MAKEFILLET_DECL_VIRT(BRepFilletAPI_MakeFillet)
BREPFILLETAPI_MAKEFILLET_DECL_NONVIRT(BRepFilletAPI_MakeFillet)
BREPFILLETAPI_MAKEFILLET_DECL_ACCESSOR(BRepFilletAPI_MakeFillet)

#ifdef __cplusplus
}
#endif

