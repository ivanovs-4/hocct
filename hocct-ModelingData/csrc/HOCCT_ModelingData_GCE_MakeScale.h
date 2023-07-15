
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define GCE_MAKESCALE_DECL_VIRT(Type) \



#define GCE_MAKESCALE_DECL_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeScale ( gp_Pnt_p Point, double Scale );\
gp_Trsf_p Type##_gCE_MakeScale_Value ( Type##_p p );


#define GCE_MAKESCALE_DECL_ACCESSOR(Type) \



#define GCE_MAKESCALE_DEF_VIRT(Type) \



#define GCE_MAKESCALE_DEF_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeScale ( gp_Pnt_p Point, double Scale ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point)), Scale);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
gp_Trsf_p Type##_gCE_MakeScale_Value ( Type##_p p ) {\
return from_const_to_nonconst<gp_Trsf_t, gp_Trsf>(&(((TYPECASTMETHOD(Type, gCE_MakeScale_Value, gce_MakeScale))(p))->Value()));\
}


#define GCE_MAKESCALE_DEF_ACCESSOR(Type) \



GCE_MAKESCALE_DECL_VIRT(gce_MakeScale)
GCE_MAKESCALE_DECL_NONVIRT(gce_MakeScale)
GCE_MAKESCALE_DECL_ACCESSOR(gce_MakeScale)

#ifdef __cplusplus
}
#endif

