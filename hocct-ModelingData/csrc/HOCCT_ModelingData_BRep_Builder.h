
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "HOCCT_ModelingData_TopoDS_Builder.h"


#define BREP_BUILDER_DECL_VIRT(Type) \



#define BREP_BUILDER_DECL_NONVIRT(Type) \
Type##_p Type##_newBRep_Builder (  );\
void Type##_bRep_Builder_MakeFace ( Type##_p p, TopoDS_Face_p F );


#define BREP_BUILDER_DECL_ACCESSOR(Type) \



#define BREP_BUILDER_DEF_VIRT(Type) \



#define BREP_BUILDER_DEF_NONVIRT(Type) \
Type##_p Type##_newBRep_Builder (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void Type##_bRep_Builder_MakeFace ( Type##_p p, TopoDS_Face_p F ) {\
((TYPECASTMETHOD(Type, bRep_Builder_MakeFace, BRep_Builder))(p))->MakeFace(from_nonconstref_to_nonconstref<TopoDS_Face, TopoDS_Face_t>(*(F)));\
}


#define BREP_BUILDER_DEF_ACCESSOR(Type) \



TOPODS_BUILDER_DECL_VIRT(BRep_Builder)
BREP_BUILDER_DECL_VIRT(BRep_Builder)
BREP_BUILDER_DECL_NONVIRT(BRep_Builder)
BREP_BUILDER_DECL_ACCESSOR(BRep_Builder)

#ifdef __cplusplus
}
#endif

