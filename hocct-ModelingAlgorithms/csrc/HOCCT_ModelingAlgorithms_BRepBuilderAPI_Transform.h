
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_ModifyShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-FoundationType.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_TRANSFORM_DECL_VIRT(Type) \



#define BREPBUILDERAPI_TRANSFORM_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_Transform ( gp_Trsf_p T );\
Type##_p Type##_newBRepBuilderAPI_Transform_FromShape ( TopoDS_Shape_p S, gp_Trsf_p T, bool Copy );\
void Type##_bRepBuilderAPI_Transform_Perform ( Type##_p p, TopoDS_Shape_p S, bool Copy );


#define BREPBUILDERAPI_TRANSFORM_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_TRANSFORM_DEF_VIRT(Type) \



#define BREPBUILDERAPI_TRANSFORM_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_Transform ( gp_Trsf_p T ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Trsf, gp_Trsf_t>(*(T)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_Transform_FromShape ( TopoDS_Shape_p S, gp_Trsf_p T, bool Copy ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), from_nonconstref_to_nonconstref<gp_Trsf, gp_Trsf_t>(*(T)), Copy);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepBuilderAPI_Transform_Perform ( Type##_p p, TopoDS_Shape_p S, bool Copy ) {\
((TYPECASTMETHOD(Type, bRepBuilderAPI_Transform_Perform, BRepBuilderAPI_Transform))(p))->Perform(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), Copy);\
}


#define BREPBUILDERAPI_TRANSFORM_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MODIFYSHAPE_DECL_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_TRANSFORM_DECL_VIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_TRANSFORM_DECL_NONVIRT(BRepBuilderAPI_Transform)
BREPBUILDERAPI_TRANSFORM_DECL_ACCESSOR(BRepBuilderAPI_Transform)

#ifdef __cplusplus
}
#endif

