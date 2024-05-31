
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Revolution.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_OneAxis.h"


#define BREPPRIM_CYLINDER_DECL_VIRT(Type) \



#define BREPPRIM_CYLINDER_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Cylinder ( double R, double H );


#define BREPPRIM_CYLINDER_DECL_ACCESSOR(Type) \



#define BREPPRIM_CYLINDER_DEF_VIRT(Type) \



#define BREPPRIM_CYLINDER_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Cylinder ( double R, double H ) {\
Type* newp=new Type(R, H);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define BREPPRIM_CYLINDER_DEF_ACCESSOR(Type) \



BREPPRIM_REVOLUTION_DECL_VIRT(BRepPrim_Cylinder)
BREPPRIM_ONEAXIS_DECL_VIRT(BRepPrim_Cylinder)
BREPPRIM_CYLINDER_DECL_VIRT(BRepPrim_Cylinder)
BREPPRIM_CYLINDER_DECL_NONVIRT(BRepPrim_Cylinder)
BREPPRIM_CYLINDER_DECL_ACCESSOR(BRepPrim_Cylinder)

#ifdef __cplusplus
}
#endif

