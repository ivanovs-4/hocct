
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPPRIMAPI_MAKEWEDGE_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKEWEDGE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeWedge ( double dx, double dy, double dz, double ltx );\
TopoDS_Solid_p Type##_bRepPrimAPI_MakeWedge_Solid ( Type##_p p );


#define BREPPRIMAPI_MAKEWEDGE_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKEWEDGE_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKEWEDGE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeWedge ( double dx, double dy, double dz, double ltx ) {\
Type* newp=new Type(dx, dy, dz, ltx);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
TopoDS_Solid_p Type##_bRepPrimAPI_MakeWedge_Solid ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Solid_t, TopoDS_Solid>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeWedge_Solid, BRepPrimAPI_MakeWedge))(p))->Solid()));\
}


#define BREPPRIMAPI_MAKEWEDGE_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeWedge)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeWedge)
BREPPRIMAPI_MAKEWEDGE_DECL_VIRT(BRepPrimAPI_MakeWedge)
BREPPRIMAPI_MAKEWEDGE_DECL_NONVIRT(BRepPrimAPI_MakeWedge)
BREPPRIMAPI_MAKEWEDGE_DECL_ACCESSOR(BRepPrimAPI_MakeWedge)

#ifdef __cplusplus
}
#endif

