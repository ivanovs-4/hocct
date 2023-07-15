
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "hocct-FoundationType.h"


#define GCE_MAKEMIRROR_DECL_VIRT(Type) \



#define GCE_MAKEMIRROR_DECL_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeMirror_FromPoint ( gp_Pnt_p Point );\
Type##_p Type##_newGCE_MakeMirror_FromLine ( gp_Lin_p Line );\
Type##_p Type##_newGCE_MakeMirror_FromPointDirection ( gp_Pnt_p Point, gp_Dir_p Direc );\
Type##_p Type##_newGCE_MakeMirror_FromPlane ( gp_Pln_p Plane );\
gp_Trsf_p Type##_gCE_MakeMirror_Value ( Type##_p p );


#define GCE_MAKEMIRROR_DECL_ACCESSOR(Type) \



#define GCE_MAKEMIRROR_DEF_VIRT(Type) \



#define GCE_MAKEMIRROR_DEF_NONVIRT(Type) \
Type##_p Type##_newGCE_MakeMirror_FromPoint ( gp_Pnt_p Point ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGCE_MakeMirror_FromLine ( gp_Lin_p Line ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Lin, gp_Lin_t>(*(Line)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGCE_MakeMirror_FromPointDirection ( gp_Pnt_p Point, gp_Dir_p Direc ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(Point)), from_nonconstref_to_nonconstref<gp_Dir, gp_Dir_t>(*(Direc)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGCE_MakeMirror_FromPlane ( gp_Pln_p Plane ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pln, gp_Pln_t>(*(Plane)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
gp_Trsf_p Type##_gCE_MakeMirror_Value ( Type##_p p ) {\
return from_const_to_nonconst<gp_Trsf_t, gp_Trsf>(&(((TYPECASTMETHOD(Type, gCE_MakeMirror_Value, gce_MakeMirror))(p))->Value()));\
}


#define GCE_MAKEMIRROR_DEF_ACCESSOR(Type) \



GCE_MAKEMIRROR_DECL_VIRT(gce_MakeMirror)
GCE_MAKEMIRROR_DECL_NONVIRT(gce_MakeMirror)
GCE_MAKEMIRROR_DECL_ACCESSOR(gce_MakeMirror)

#ifdef __cplusplus
}
#endif

