
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPPRIMAPI_MAKEBOX_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKEBOX_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeBox ( double dx, double dy, double dz );\
TopoDS_Shell_p Type##_bRepPrimAPI_MakeBox_Shell ( Type##_p p );\
TopoDS_Solid_p Type##_bRepPrimAPI_MakeBox_Solid ( Type##_p p );


#define BREPPRIMAPI_MAKEBOX_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKEBOX_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKEBOX_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepPrimAPI_MakeBox ( double dx, double dy, double dz ) {\
Type* newp=new Type(dx, dy, dz);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
TopoDS_Shell_p Type##_bRepPrimAPI_MakeBox_Shell ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Shell_t, TopoDS_Shell>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeBox_Shell, BRepPrimAPI_MakeBox))(p))->Shell()));\
}\
\
TopoDS_Solid_p Type##_bRepPrimAPI_MakeBox_Solid ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Solid_t, TopoDS_Solid>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeBox_Solid, BRepPrimAPI_MakeBox))(p))->Solid()));\
}


#define BREPPRIMAPI_MAKEBOX_DEF_ACCESSOR(Type) \



BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(BRepPrimAPI_MakeBox)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeBox)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeBox)
BREPPRIMAPI_MAKEBOX_DECL_VIRT(BRepPrimAPI_MakeBox)
BREPPRIMAPI_MAKEBOX_DECL_NONVIRT(BRepPrimAPI_MakeBox)
BREPPRIMAPI_MAKEBOX_DECL_ACCESSOR(BRepPrimAPI_MakeBox)

#ifdef __cplusplus
}
#endif

