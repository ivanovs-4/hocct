
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"


#define TOPODS_SHAPE_DECL_VIRT(Type) \



#define TOPODS_SHAPE_DECL_NONVIRT(Type) \
void Type##_topoDS_Shape_Reverse ( Type##_p p );


#define TOPODS_SHAPE_DECL_ACCESSOR(Type) \



#define TOPODS_SHAPE_DEF_VIRT(Type) \



#define TOPODS_SHAPE_DEF_NONVIRT(Type) \
void Type##_topoDS_Shape_Reverse ( Type##_p p ) {\
((TYPECASTMETHOD(Type, topoDS_Shape_Reverse, TopoDS_Shape))(p))->Reverse();\
}


#define TOPODS_SHAPE_DEF_ACCESSOR(Type) \



TOPODS_SHAPE_DECL_VIRT(TopoDS_Shape)
TOPODS_SHAPE_DECL_NONVIRT(TopoDS_Shape)
TOPODS_SHAPE_DECL_ACCESSOR(TopoDS_Shape)

#ifdef __cplusplus
}
#endif

