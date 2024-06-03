
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"


#define TOPEXP_EXPLORER_DECL_VIRT(Type) \



#define TOPEXP_EXPLORER_DECL_NONVIRT(Type) \
Type##_p Type##_newTopExp_Explorer ( TopoDS_Shape_p S, TopAbs_ShapeEnum ToFind, TopAbs_ShapeEnum ToAvoid );\
bool Type##_topExp_Explorer_More ( Type##_p p );\
void Type##_topExp_Explorer_Next ( Type##_p p );\
TopoDS_Shape_p Type##_topExp_Explorer_Current ( Type##_p p );\
TopoDS_Shape_p Type##_topExp_Explorer_Value ( Type##_p p );


#define TOPEXP_EXPLORER_DECL_ACCESSOR(Type) \



#define TOPEXP_EXPLORER_DEF_VIRT(Type) \



#define TOPEXP_EXPLORER_DEF_NONVIRT(Type) \
Type##_p Type##_newTopExp_Explorer ( TopoDS_Shape_p S, TopAbs_ShapeEnum ToFind, TopAbs_ShapeEnum ToAvoid ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), ToFind, ToAvoid);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
bool Type##_topExp_Explorer_More ( Type##_p p ) {\
return ((TYPECASTMETHOD(Type, topExp_Explorer_More, TopExp_Explorer))(p))->More();\
}\
\
void Type##_topExp_Explorer_Next ( Type##_p p ) {\
((TYPECASTMETHOD(Type, topExp_Explorer_Next, TopExp_Explorer))(p))->Next();\
}\
\
TopoDS_Shape_p Type##_topExp_Explorer_Current ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Shape_t, TopoDS_Shape>(new TopoDS_Shape(((TYPECASTMETHOD(Type, topExp_Explorer_Current, TopExp_Explorer))(p))->Current()));\
}\
\
TopoDS_Shape_p Type##_topExp_Explorer_Value ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Shape_t, TopoDS_Shape>(new TopoDS_Shape(((TYPECASTMETHOD(Type, topExp_Explorer_Value, TopExp_Explorer))(p))->Value()));\
}


#define TOPEXP_EXPLORER_DEF_ACCESSOR(Type) \



TOPEXP_EXPLORER_DECL_VIRT(TopExp_Explorer)
TOPEXP_EXPLORER_DECL_NONVIRT(TopExp_Explorer)
TOPEXP_EXPLORER_DECL_ACCESSOR(TopExp_Explorer)

#ifdef __cplusplus
}
#endif

