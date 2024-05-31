
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Revolution.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_OneAxis.h"


#define BREPPRIM_TORUS_DECL_VIRT(Type) \



#define BREPPRIM_TORUS_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Torus ( double R1, double R2 );


#define BREPPRIM_TORUS_DECL_ACCESSOR(Type) \



#define BREPPRIM_TORUS_DEF_VIRT(Type) \



#define BREPPRIM_TORUS_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Torus ( double R1, double R2 ) {\
Type* newp=new Type(R1, R2);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define BREPPRIM_TORUS_DEF_ACCESSOR(Type) \



BREPPRIM_REVOLUTION_DECL_VIRT(BRepPrim_Torus)
BREPPRIM_ONEAXIS_DECL_VIRT(BRepPrim_Torus)
BREPPRIM_TORUS_DECL_VIRT(BRepPrim_Torus)
BREPPRIM_TORUS_DECL_NONVIRT(BRepPrim_Torus)
BREPPRIM_TORUS_DECL_ACCESSOR(BRepPrim_Torus)

#ifdef __cplusplus
}
#endif

