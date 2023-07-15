
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define BREPBUILDERAPI_MAKEVERTEX_DECL_VIRT(Type) \



#define BREPBUILDERAPI_MAKEVERTEX_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeVertex ( gp_Pnt_p P );\
TopoDS_Vertex_p Type##_bRepBuilderAPI_MakeVertex_Vertex ( Type##_p p );


#define BREPBUILDERAPI_MAKEVERTEX_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_MAKEVERTEX_DEF_VIRT(Type) \



#define BREPBUILDERAPI_MAKEVERTEX_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeVertex ( gp_Pnt_p P ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(P)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
TopoDS_Vertex_p Type##_bRepBuilderAPI_MakeVertex_Vertex ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Vertex_t, TopoDS_Vertex>(&(((TYPECASTMETHOD(Type, bRepBuilderAPI_MakeVertex_Vertex, BRepBuilderAPI_MakeVertex))(p))->Vertex()));\
}


#define BREPBUILDERAPI_MAKEVERTEX_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_MakeVertex)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_MakeVertex)
BREPBUILDERAPI_MAKEVERTEX_DECL_VIRT(BRepBuilderAPI_MakeVertex)
BREPBUILDERAPI_MAKEVERTEX_DECL_NONVIRT(BRepBuilderAPI_MakeVertex)
BREPBUILDERAPI_MAKEVERTEX_DECL_ACCESSOR(BRepBuilderAPI_MakeVertex)

#ifdef __cplusplus
}
#endif

