
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepFilletAPI_LocalOperation.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPFILLETAPI_MAKECHAMFER_DECL_VIRT(Type) \



#define BREPFILLETAPI_MAKECHAMFER_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepFilletAPI_MakeChamfer ( TopoDS_Shape_p S );\
void Type##_bRepFilletAPI_MakeChamfer_Add_Dis_E ( Type##_p p, double Dis, TopoDS_Edge_p E );


#define BREPFILLETAPI_MAKECHAMFER_DECL_ACCESSOR(Type) \



#define BREPFILLETAPI_MAKECHAMFER_DEF_VIRT(Type) \



#define BREPFILLETAPI_MAKECHAMFER_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepFilletAPI_MakeChamfer ( TopoDS_Shape_p S ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepFilletAPI_MakeChamfer_Add_Dis_E ( Type##_p p, double Dis, TopoDS_Edge_p E ) {\
((TYPECASTMETHOD(Type, bRepFilletAPI_MakeChamfer_Add_Dis_E, BRepFilletAPI_MakeChamfer))(p))->Add(Dis, from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(E)));\
}


#define BREPFILLETAPI_MAKECHAMFER_DEF_ACCESSOR(Type) \



BREPFILLETAPI_LOCALOPERATION_DECL_VIRT(BRepFilletAPI_MakeChamfer)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepFilletAPI_MakeChamfer)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepFilletAPI_MakeChamfer)
BREPFILLETAPI_MAKECHAMFER_DECL_VIRT(BRepFilletAPI_MakeChamfer)
BREPFILLETAPI_MAKECHAMFER_DECL_NONVIRT(BRepFilletAPI_MakeChamfer)
BREPFILLETAPI_MAKECHAMFER_DECL_ACCESSOR(BRepFilletAPI_MakeChamfer)

#ifdef __cplusplus
}
#endif

