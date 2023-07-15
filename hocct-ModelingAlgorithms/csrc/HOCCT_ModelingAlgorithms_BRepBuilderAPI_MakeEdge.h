
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define BREPBUILDERAPI_MAKEEDGE_DECL_VIRT(Type) \



#define BREPBUILDERAPI_MAKEEDGE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeEdge_L ( void* L );\
Type##_p Type##_newBRepBuilderAPI_MakeEdge_P1_P2 ( gp_Pnt_p P1, gp_Pnt_p P2 );\
Type##_p Type##_newBRepBuilderAPI_MakeEdge_V1_V2 ( TopoDS_Vertex_p V1, TopoDS_Vertex_p V2 );\
TopoDS_Edge_p Type##_bRepBuilderAPI_MakeEdge_Edge ( Type##_p p );


#define BREPBUILDERAPI_MAKEEDGE_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_MAKEEDGE_DEF_VIRT(Type) \



#define BREPBUILDERAPI_MAKEEDGE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeEdge_L ( void* L ) {\
Type* newp=new Type(*((opencascade::handle<Geom_Curve>*)L));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_MakeEdge_P1_P2 ( gp_Pnt_p P1, gp_Pnt_p P2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(P1)), from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(P2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_MakeEdge_V1_V2 ( TopoDS_Vertex_p V1, TopoDS_Vertex_p V2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Vertex, TopoDS_Vertex_t>(*(V1)), from_nonconstref_to_nonconstref<TopoDS_Vertex, TopoDS_Vertex_t>(*(V2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
TopoDS_Edge_p Type##_bRepBuilderAPI_MakeEdge_Edge ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Edge_t, TopoDS_Edge>(&(((TYPECASTMETHOD(Type, bRepBuilderAPI_MakeEdge_Edge, BRepBuilderAPI_MakeEdge))(p))->Edge()));\
}


#define BREPBUILDERAPI_MAKEEDGE_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_MAKEEDGE_DECL_VIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_MAKEEDGE_DECL_NONVIRT(BRepBuilderAPI_MakeEdge)
BREPBUILDERAPI_MAKEEDGE_DECL_ACCESSOR(BRepBuilderAPI_MakeEdge)

#ifdef __cplusplus
}
#endif

