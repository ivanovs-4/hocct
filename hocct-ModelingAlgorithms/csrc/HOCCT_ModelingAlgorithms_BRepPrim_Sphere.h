
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Revolution.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_OneAxis.h"


#define BREPPRIM_SPHERE_DECL_VIRT(Type) \



#define BREPPRIM_SPHERE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Sphere ( double R );


#define BREPPRIM_SPHERE_DECL_ACCESSOR(Type) \



#define BREPPRIM_SPHERE_DEF_VIRT(Type) \



#define BREPPRIM_SPHERE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Sphere ( double R ) {\
Type* newp=new Type(R);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define BREPPRIM_SPHERE_DEF_ACCESSOR(Type) \



BREPPRIM_REVOLUTION_DECL_VIRT(BRepPrim_Sphere)
BREPPRIM_ONEAXIS_DECL_VIRT(BRepPrim_Sphere)
BREPPRIM_SPHERE_DECL_VIRT(BRepPrim_Sphere)
BREPPRIM_SPHERE_DECL_NONVIRT(BRepPrim_Sphere)
BREPPRIM_SPHERE_DECL_ACCESSOR(BRepPrim_Sphere)

#ifdef __cplusplus
}
#endif

