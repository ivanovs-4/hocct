
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"


#define BREPPRIMAPI_MAKESPHERE_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKESPHERE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeSphere ( double R );\
BRepPrim_Sphere_p Type##_bRepPrimAPI_MakeSphere_Sphere ( Type##_p p );


#define BREPPRIMAPI_MAKESPHERE_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKESPHERE_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKESPHERE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeSphere ( double R ) {\
Type* newp=new Type(R);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
BRepPrim_Sphere_p Type##_bRepPrimAPI_MakeSphere_Sphere ( Type##_p p ) {\
return from_const_to_nonconst<BRepPrim_Sphere_t, BRepPrim_Sphere>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeSphere_Sphere, BRepPrimAPI_MakeSphere))(p))->Sphere()));\
}


#define BREPPRIMAPI_MAKESPHERE_DEF_ACCESSOR(Type) \



BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(BRepPrimAPI_MakeSphere)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeSphere)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeSphere)
BREPPRIMAPI_MAKESPHERE_DECL_VIRT(BRepPrimAPI_MakeSphere)
BREPPRIMAPI_MAKESPHERE_DECL_NONVIRT(BRepPrimAPI_MakeSphere)
BREPPRIMAPI_MAKESPHERE_DECL_ACCESSOR(BRepPrimAPI_MakeSphere)

#ifdef __cplusplus
}
#endif

