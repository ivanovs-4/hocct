
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_SEWING_DECL_VIRT(Type) \



#define BREPBUILDERAPI_SEWING_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_Sewing (  );\
Type##_p Type##_newBRepBuilderAPI_Sewing_ ( double tolerance, bool option1, bool option2, bool option3, bool option4 );\
void Type##_bRepBuilderAPI_Sewing_Add ( Type##_p p, TopoDS_Shape_p shape );\
TopoDS_Shape_p Type##_bRepBuilderAPI_Sewing_SewedShape ( Type##_p p );\
void Type##_bRepBuilderAPI_Sewing_Perform ( Type##_p p );


#define BREPBUILDERAPI_SEWING_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_SEWING_DEF_VIRT(Type) \



#define BREPBUILDERAPI_SEWING_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_Sewing (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_Sewing_ ( double tolerance, bool option1, bool option2, bool option3, bool option4 ) {\
Type* newp=new Type(tolerance, option1, option2, option3, option4);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepBuilderAPI_Sewing_Add ( Type##_p p, TopoDS_Shape_p shape ) {\
((TYPECASTMETHOD(Type, bRepBuilderAPI_Sewing_Add, BRepBuilderAPI_Sewing))(p))->Add(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(shape)));\
}\
\
TopoDS_Shape_p Type##_bRepBuilderAPI_Sewing_SewedShape ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Shape_t, TopoDS_Shape>(&(((TYPECASTMETHOD(Type, bRepBuilderAPI_Sewing_SewedShape, BRepBuilderAPI_Sewing))(p))->SewedShape()));\
}\
\
void Type##_bRepBuilderAPI_Sewing_Perform ( Type##_p p ) {\
((TYPECASTMETHOD(Type, bRepBuilderAPI_Sewing_Perform, BRepBuilderAPI_Sewing))(p))->Perform();\
}


#define BREPBUILDERAPI_SEWING_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_SEWING_DECL_VIRT(BRepBuilderAPI_Sewing)
BREPBUILDERAPI_SEWING_DECL_NONVIRT(BRepBuilderAPI_Sewing)
BREPBUILDERAPI_SEWING_DECL_ACCESSOR(BRepBuilderAPI_Sewing)

#ifdef __cplusplus
}
#endif

