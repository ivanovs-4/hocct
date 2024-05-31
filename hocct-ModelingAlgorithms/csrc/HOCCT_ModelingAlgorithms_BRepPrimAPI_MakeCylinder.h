
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"


#define BREPPRIMAPI_MAKECYLINDER_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKECYLINDER_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeCylinder ( double R, double H );\
BRepPrim_Cylinder_p Type##_bRepPrimAPI_MakeCylinder_Cylinder ( Type##_p p );


#define BREPPRIMAPI_MAKECYLINDER_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKECYLINDER_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKECYLINDER_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeCylinder ( double R, double H ) {\
Type* newp=new Type(R, H);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
BRepPrim_Cylinder_p Type##_bRepPrimAPI_MakeCylinder_Cylinder ( Type##_p p ) {\
return from_const_to_nonconst<BRepPrim_Cylinder_t, BRepPrim_Cylinder>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeCylinder_Cylinder, BRepPrimAPI_MakeCylinder))(p))->Cylinder()));\
}


#define BREPPRIMAPI_MAKECYLINDER_DEF_ACCESSOR(Type) \



BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(BRepPrimAPI_MakeCylinder)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeCylinder)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeCylinder)
BREPPRIMAPI_MAKECYLINDER_DECL_VIRT(BRepPrimAPI_MakeCylinder)
BREPPRIMAPI_MAKECYLINDER_DECL_NONVIRT(BRepPrimAPI_MakeCylinder)
BREPPRIMAPI_MAKECYLINDER_DECL_ACCESSOR(BRepPrimAPI_MakeCylinder)

#ifdef __cplusplus
}
#endif

