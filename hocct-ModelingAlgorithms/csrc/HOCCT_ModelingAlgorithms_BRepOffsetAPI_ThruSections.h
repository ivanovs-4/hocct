
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPOFFSETAPI_THRUSECTIONS_DECL_VIRT(Type) \



#define BREPOFFSETAPI_THRUSECTIONS_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepOffsetAPI_ThruSections ( bool isSolid, bool ruled );\
void Type##_bRepOffsetAPI_ThruSections_AddWire ( Type##_p p, TopoDS_Wire_p wire );\
void Type##_bRepOffsetAPI_ThruSections_AddVertex ( Type##_p p, TopoDS_Vertex_p aVertex );


#define BREPOFFSETAPI_THRUSECTIONS_DECL_ACCESSOR(Type) \



#define BREPOFFSETAPI_THRUSECTIONS_DEF_VIRT(Type) \



#define BREPOFFSETAPI_THRUSECTIONS_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepOffsetAPI_ThruSections ( bool isSolid, bool ruled ) {\
Type* newp=new Type(isSolid, ruled);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepOffsetAPI_ThruSections_AddWire ( Type##_p p, TopoDS_Wire_p wire ) {\
((TYPECASTMETHOD(Type, bRepOffsetAPI_ThruSections_AddWire, BRepOffsetAPI_ThruSections))(p))->AddWire(from_nonconstref_to_nonconstref<TopoDS_Wire, TopoDS_Wire_t>(*(wire)));\
}\
\
void Type##_bRepOffsetAPI_ThruSections_AddVertex ( Type##_p p, TopoDS_Vertex_p aVertex ) {\
((TYPECASTMETHOD(Type, bRepOffsetAPI_ThruSections_AddVertex, BRepOffsetAPI_ThruSections))(p))->AddVertex(from_nonconstref_to_nonconstref<TopoDS_Vertex, TopoDS_Vertex_t>(*(aVertex)));\
}


#define BREPOFFSETAPI_THRUSECTIONS_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepOffsetAPI_ThruSections)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepOffsetAPI_ThruSections)
BREPOFFSETAPI_THRUSECTIONS_DECL_VIRT(BRepOffsetAPI_ThruSections)
BREPOFFSETAPI_THRUSECTIONS_DECL_NONVIRT(BRepOffsetAPI_ThruSections)
BREPOFFSETAPI_THRUSECTIONS_DECL_ACCESSOR(BRepOffsetAPI_ThruSections)

#ifdef __cplusplus
}
#endif

