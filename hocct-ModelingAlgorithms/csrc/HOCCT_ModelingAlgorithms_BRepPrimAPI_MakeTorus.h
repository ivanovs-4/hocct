
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"


#define BREPPRIMAPI_MAKETORUS_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKETORUS_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeTorus ( double R1, double R2 );\
BRepPrim_Torus_p Type##_bRepPrimAPI_MakeTorus_Torus ( Type##_p p );


#define BREPPRIMAPI_MAKETORUS_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKETORUS_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKETORUS_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeTorus ( double R1, double R2 ) {\
Type* newp=new Type(R1, R2);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
BRepPrim_Torus_p Type##_bRepPrimAPI_MakeTorus_Torus ( Type##_p p ) {\
return from_const_to_nonconst<BRepPrim_Torus_t, BRepPrim_Torus>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeTorus_Torus, BRepPrimAPI_MakeTorus))(p))->Torus()));\
}


#define BREPPRIMAPI_MAKETORUS_DEF_ACCESSOR(Type) \



BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(BRepPrimAPI_MakeTorus)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeTorus)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeTorus)
BREPPRIMAPI_MAKETORUS_DECL_VIRT(BRepPrimAPI_MakeTorus)
BREPPRIMAPI_MAKETORUS_DECL_NONVIRT(BRepPrimAPI_MakeTorus)
BREPPRIMAPI_MAKETORUS_DECL_ACCESSOR(BRepPrimAPI_MakeTorus)

#ifdef __cplusplus
}
#endif

