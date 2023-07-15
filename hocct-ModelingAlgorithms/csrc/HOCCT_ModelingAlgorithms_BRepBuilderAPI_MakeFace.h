
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_MAKEFACE_DECL_VIRT(Type) \



#define BREPBUILDERAPI_MAKEFACE_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeFaceW ( TopoDS_Wire_p W, bool OnlyPlane );\
TopoDS_Face_p Type##_bRepBuilderAPI_MakeFace_Face ( Type##_p p );


#define BREPBUILDERAPI_MAKEFACE_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_MAKEFACE_DEF_VIRT(Type) \



#define BREPBUILDERAPI_MAKEFACE_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_MakeFaceW ( TopoDS_Wire_p W, bool OnlyPlane ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Wire, TopoDS_Wire_t>(*(W)), OnlyPlane);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
TopoDS_Face_p Type##_bRepBuilderAPI_MakeFace_Face ( Type##_p p ) {\
return from_const_to_nonconst<TopoDS_Face_t, TopoDS_Face>(&(((TYPECASTMETHOD(Type, bRepBuilderAPI_MakeFace_Face, BRepBuilderAPI_MakeFace))(p))->Face()));\
}


#define BREPBUILDERAPI_MAKEFACE_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_MAKEFACE_DECL_VIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_MAKEFACE_DECL_NONVIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_MAKEFACE_DECL_ACCESSOR(BRepBuilderAPI_MakeFace)

#ifdef __cplusplus
}
#endif

