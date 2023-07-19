
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"


#define TOPODS_BUILDER_DECL_VIRT(Type) \



#define TOPODS_BUILDER_DECL_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Builder (  );\
void Type##_topoDS_Builder_MakeCompound ( Type##_p p, TopoDS_Compound_p C );\
void Type##_topoDS_Builder_Add ( Type##_p p, TopoDS_Shape_p S, TopoDS_Shape_p C );


#define TOPODS_BUILDER_DECL_ACCESSOR(Type) \



#define TOPODS_BUILDER_DEF_VIRT(Type) \



#define TOPODS_BUILDER_DEF_NONVIRT(Type) \
Type##_p Type##_newTopoDS_Builder (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_topoDS_Builder_MakeCompound ( Type##_p p, TopoDS_Compound_p C ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_MakeCompound, TopoDS_Builder))(p))->MakeCompound(from_nonconstref_to_nonconstref<TopoDS_Compound, TopoDS_Compound_t>(*(C)));\
}\
\
void Type##_topoDS_Builder_Add ( Type##_p p, TopoDS_Shape_p S, TopoDS_Shape_p C ) {\
((TYPECASTMETHOD(Type, topoDS_Builder_Add, TopoDS_Builder))(p))->Add(from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(S)), from_nonconstref_to_nonconstref<TopoDS_Shape, TopoDS_Shape_t>(*(C)));\
}


#define TOPODS_BUILDER_DEF_ACCESSOR(Type) \



TOPODS_SHAPE_DECL_VIRT(TopoDS_Builder)
TOPODS_BUILDER_DECL_VIRT(TopoDS_Builder)
TOPODS_BUILDER_DECL_NONVIRT(TopoDS_Builder)
TOPODS_BUILDER_DECL_ACCESSOR(TopoDS_Builder)

#ifdef __cplusplus
}
#endif

