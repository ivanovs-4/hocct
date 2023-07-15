
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define GCE_MAKEROTATION_DECL_VIRT(Type) \



#define GCE_MAKEROTATION_DECL_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeRotation_LineAngle ( gp_Lin_p Line, double Angle );\
Type##_p Type##_newGCE_MakeRotation_PointDirectionAngle ( gp_Pnt_p Point, gp_Dir_p Direc, double Angle );\
gp_Trsf_p Type##_gCE_MakeRotation_Value ( Type##_p p );


#define GCE_MAKEROTATION_DECL_ACCESSOR(Type) \



#define GCE_MAKEROTATION_DEF_VIRT(Type) \



#define GCE_MAKEROTATION_DEF_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeRotation_LineAngle ( gp_Lin_p Line, double Angle ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Lin, gp_Lin_t>(*(Line)), Angle);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGCE_MakeRotation_PointDirectionAngle ( gp_Pnt_p Point, gp_Dir_p Direc, double Angle ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point)), from_nonconstref_to_nonconstref<gp_Dir, gp_Dir_t>(*(Direc)), Angle);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
gp_Trsf_p Type##_gCE_MakeRotation_Value ( Type##_p p ) {\
return from_const_to_nonconst<gp_Trsf_t, gp_Trsf>(&(((TYPECASTMETHOD(Type, gCE_MakeRotation_Value, gce_MakeRotation))(p))->Value()));\
}


#define GCE_MAKEROTATION_DEF_ACCESSOR(Type) \



GCE_MAKEROTATION_DECL_VIRT(gce_MakeRotation)
GCE_MAKEROTATION_DECL_NONVIRT(gce_MakeRotation)
GCE_MAKEROTATION_DECL_ACCESSOR(gce_MakeRotation)

#ifdef __cplusplus
}
#endif

