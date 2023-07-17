
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingAlgorithmsType.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_ModifyShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "hocct-ModelingDataType.h"


#define BREPBUILDERAPI_COPY_DECL_VIRT(Type) \



#define BREPBUILDERAPI_COPY_DECL_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_Copy (  );\
Type##_p Type##_newBRepBuilderAPI_Copy_Shape ( TopoDS_Shape_p S, bool copyGeom, bool copyMesh );\
void Type##_bRepBuilderAPI_Copy_Perform ( Type##_p p, TopoDS_Shape_p S );


#define BREPBUILDERAPI_COPY_DECL_ACCESSOR(Type) \



#define BREPBUILDERAPI_COPY_DEF_VIRT(Type) \



#define BREPBUILDERAPI_COPY_DEF_NONVIRT(Type) \
Type##_p Type##_newBRepBuilderAPI_Copy (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newBRepBuilderAPI_Copy_Shape ( TopoDS_Shape_p S, bool copyGeom, bool copyMesh ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), copyGeom, copyMesh);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRepBuilderAPI_Copy_Perform ( Type##_p p, TopoDS_Shape_p S ) {\
((TYPECASTMETHOD(Type, bRepBuilderAPI_Copy_Perform, BRepBuilderAPI_Copy))(p))->Perform(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)));\
}


#define BREPBUILDERAPI_COPY_DEF_ACCESSOR(Type) \



BREPBUILDERAPI_MODIFYSHAPE_DECL_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_MAKESHAPE_DECL_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COMMAND_DECL_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COPY_DECL_VIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COPY_DECL_NONVIRT(BRepBuilderAPI_Copy)
BREPBUILDERAPI_COPY_DECL_ACCESSOR(BRepBuilderAPI_Copy)

#ifdef __cplusplus
}
#endif

