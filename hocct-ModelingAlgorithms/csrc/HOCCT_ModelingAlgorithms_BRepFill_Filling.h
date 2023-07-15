
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define BREPFILL_FILLING_DECL_VIRT(Type) \



#define BREPFILL_FILLING_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepFill_Filling (  );\
int Type##_bRepFill_Filling_AddPoint ( Type##_p p, gp_Pnt_p Point );\
int Type##_bRepFill_Filling_AddEdge ( Type##_p p, TopoDS_Edge_p anEdge, GeomAbs_Shape Order, bool IsBound );\
void Type##_bRepFill_Filling_Build ( Type##_p p );\
TopoDS_Face_p Type##_bRepFill_Filling_Face ( Type##_p p );


#define BREPFILL_FILLING_DECL_ACCESSOR(Type) \



#define BREPFILL_FILLING_DEF_VIRT(Type) \



#define BREPFILL_FILLING_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepFill_Filling (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
int Type##_bRepFill_Filling_AddPoint ( Type##_p p, gp_Pnt_p Point ) {\
return ((TYPECASTMETHOD(Type, bRepFill_Filling_AddPoint, BRepFill_Filling))(p))->Add(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point)));\
}\
\
int Type##_bRepFill_Filling_AddEdge ( Type##_p p, TopoDS_Edge_p anEdge, GeomAbs_Shape Order, bool IsBound ) {\
return ((TYPECASTMETHOD(Type, bRepFill_Filling_AddEdge, BRepFill_Filling))(p))->Add(from_nonconstref_to_nonconstref<TopoDS_Edge, TopoDS_Edge_t>(*(anEdge)), Order, IsBound);\
}\
\
void Type##_bRepFill_Filling_Build ( Type##_p p ) {\
((TYPECASTMETHOD(Type, bRepFill_Filling_Build, BRepFill_Filling))(p))->Build();\
}\
\
TopoDS_Face_p Type##_bRepFill_Filling_Face ( Type##_p p ) {\
return from_nonconst_to_nonconst<TopoDS_Face_t, TopoDS_Face>(new TopoDS_Face(((TYPECASTMETHOD(Type, bRepFill_Filling_Face, BRepFill_Filling))(p))->Face()));\
}


#define BREPFILL_FILLING_DEF_ACCESSOR(Type) \



BREPFILL_FILLING_DECL_VIRT(BRepFill_Filling)
BREPFILL_FILLING_DECL_NONVIRT(BRepFill_Filling)
BREPFILL_FILLING_DECL_ACCESSOR(BRepFill_Filling)

#ifdef __cplusplus
}
#endif

