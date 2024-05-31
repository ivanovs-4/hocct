
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Revolution.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_OneAxis.h"


#define BREPPRIM_CONE_DECL_VIRT(Type) \



#define BREPPRIM_CONE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Cone ( double R1, double R2, double H );


#define BREPPRIM_CONE_DECL_ACCESSOR(Type) \



#define BREPPRIM_CONE_DEF_VIRT(Type) \



#define BREPPRIM_CONE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrim_Cone ( double R1, double R2, double H ) {\
Type* newp=new Type(R1, R2, H);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define BREPPRIM_CONE_DEF_ACCESSOR(Type) \



BREPPRIM_REVOLUTION_DECL_VIRT(BRepPrim_Cone)
BREPPRIM_ONEAXIS_DECL_VIRT(BRepPrim_Cone)
BREPPRIM_CONE_DECL_VIRT(BRepPrim_Cone)
BREPPRIM_CONE_DECL_NONVIRT(BRepPrim_Cone)
BREPPRIM_CONE_DECL_ACCESSOR(BRepPrim_Cone)

#ifdef __cplusplus
}
#endif

