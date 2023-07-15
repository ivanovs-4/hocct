
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define GCE_MAKETRANSLATION_DECL_VIRT(Type) \



#define GCE_MAKETRANSLATION_DECL_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeTranslation_FromVec ( gp_Vec_p Vect );\
Type##_p Type##_newGCE_MakeTranslation_FromP1P2 ( gp_Pnt_p Point1, gp_Pnt_p Point2 );\
gp_Trsf_p Type##_gCE_MakeTranslation_Value ( Type##_p p );


#define GCE_MAKETRANSLATION_DECL_ACCESSOR(Type) \



#define GCE_MAKETRANSLATION_DEF_VIRT(Type) \



#define GCE_MAKETRANSLATION_DEF_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeTranslation_FromVec ( gp_Vec_p Vect ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Vec, gp_Vec_t>(*(Vect)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGCE_MakeTranslation_FromP1P2 ( gp_Pnt_p Point1, gp_Pnt_p Point2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point1)), from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
gp_Trsf_p Type##_gCE_MakeTranslation_Value ( Type##_p p ) {\
return from_const_to_nonconst<gp_Trsf_t, gp_Trsf>(&(((TYPECASTMETHOD(Type, gCE_MakeTranslation_Value, gce_MakeTranslation))(p))->Value()));\
}


#define GCE_MAKETRANSLATION_DEF_ACCESSOR(Type) \



GCE_MAKETRANSLATION_DECL_VIRT(gce_MakeTranslation)
GCE_MAKETRANSLATION_DECL_NONVIRT(gce_MakeTranslation)
GCE_MAKETRANSLATION_DECL_ACCESSOR(gce_MakeTranslation)

#ifdef __cplusplus
}
#endif

