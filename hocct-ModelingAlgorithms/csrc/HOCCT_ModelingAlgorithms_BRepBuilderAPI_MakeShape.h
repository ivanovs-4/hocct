
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(Type) \
TopoDS_Shape_p Type##_Shape ( Type##_p p );


#define BREPBUILDERAPI_MAKESHAPE_DECL_NONVIRT(Type) \



#define BREPBUILDERAPI_MAKESHAPE_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(Type) \
TopoDS_Shape_p Type##_Shape ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Shape_t, TopoDS_Shape>(&(((TYPECASTMETHOD(Type, Shape, BRepBuilderAPI_MakeShape))(p))->Shape()));\
}


#define BREPBUILDERAPI_MAKESHAPE_DEF_NONVIRT(Type) \



#define BREPBUILDERAPI_MAKESHAPE_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_MakeShape)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_MakeShape)
BREPBUILDERAPI_MAKESHAPE_DECL_NONVIRT(BRepBuilderAPI_MakeShape)
BREPBUILDERAPI_MAKESHAPE_DECL_ACCESSOR(BRepBuilderAPI_MakeShape)

#ifdef __cplusplus
}
#endif

