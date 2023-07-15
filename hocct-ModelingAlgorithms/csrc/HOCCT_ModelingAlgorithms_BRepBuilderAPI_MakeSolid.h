
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_MAKESOLID_DECL_VIRT(Type) \



#define BREPBUILDERAPI_MAKESOLID_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeSolid ( TopoDS_Shell_p S );\
TopoDS_Solid_p Type##_bRepBuilderAPI_MakeSolid_Solid ( Type##_p p );


#define BREPBUILDERAPI_MAKESOLID_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_MAKESOLID_DEF_VIRT(Type) \



#define BREPBUILDERAPI_MAKESOLID_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeSolid ( TopoDS_Shell_p S ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shell, TopoDS_Shell_t>(*(S)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
TopoDS_Solid_p Type##_bRepBuilderAPI_MakeSolid_Solid ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Solid_t, TopoDS_Solid>(&(((TYPECASTMETHOD(Type, bRepBuilderAPI_MakeSolid_Solid, BRepBuilderAPI_MakeSolid))(p))->Solid()));\
}


#define BREPBUILDERAPI_MAKESOLID_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_MAKESOLID_DECL_VIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_MAKESOLID_DECL_NONVIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_MAKESOLID_DECL_ACCESSOR(BRepBuilderAPI_MakeSolid)

#ifdef __cplusplus
}
#endif

