
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(Type) \



#define BREPPRIMAPI_MAKEONEAXIS_DECL_NONVIRT(Type) \
TopoDS_Solid_p Type##_bRepPrimAPI_MakeOneAxis_Solid ( Type##_p p );


#define BREPPRIMAPI_MAKEONEAXIS_DECL_ACCESSOR(Type) \



#define BREPPRIMAPI_MAKEONEAXIS_DEF_VIRT(Type) \



#define BREPPRIMAPI_MAKEONEAXIS_DEF_NONVIRT(Type) \
TopoDS_Solid_p Type##_bRepPrimAPI_MakeOneAxis_Solid ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Solid_t, TopoDS_Solid>(&(((TYPECASTMETHOD(Type, bRepPrimAPI_MakeOneAxis_Solid, BRepPrimAPI_MakeOneAxis))(p))->Solid()));\
}


#define BREPPRIMAPI_MAKEONEAXIS_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepPrimAPI_MakeOneAxis)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepPrimAPI_MakeOneAxis)
BREPPRIMAPI_MAKEONEAXIS_DECL_VIRT(BRepPrimAPI_MakeOneAxis)
BREPPRIMAPI_MAKEONEAXIS_DECL_NONVIRT(BRepPrimAPI_MakeOneAxis)
BREPPRIMAPI_MAKEONEAXIS_DECL_ACCESSOR(BRepPrimAPI_MakeOneAxis)

#ifdef __cplusplus
}
#endif

