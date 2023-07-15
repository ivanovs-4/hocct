
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_VEC_DECL_VIRT(Type) \



#define GP_VEC_DECL_NONVIRT(Type) \
Type##_p Type##_newGP_Vec_FromXYZ ( gp_XYZ_p theCoord );\
Type##_p Type##_newGP_Vec ( double theXp, double theYp, double theZp );\
Type##_p Type##_newGP_Vec_FromP1P2 ( gp_Pnt_p theP1, gp_Pnt_p theP2 );


#define GP_VEC_DECL_ACCESSOR(Type) \



#define GP_VEC_DEF_VIRT(Type) \



#define GP_VEC_DEF_NONVIRT(Type) \
Type##_p Type##_newGP_Vec_FromXYZ ( gp_XYZ_p theCoord ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_XYZ, gp_XYZ_t>(*(theCoord)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Vec ( double theXp, double theYp, double theZp ) {\
Type* newp=new Type(theXp, theYp, theZp);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Vec_FromP1P2 ( gp_Pnt_p theP1, gp_Pnt_p theP2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(theP1)), from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(theP2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define GP_VEC_DEF_ACCESSOR(Type) \



GP_VEC_DECL_VIRT(gp_Vec)
GP_VEC_DECL_NONVIRT(gp_Vec)
GP_VEC_DECL_ACCESSOR(gp_Vec)

#ifdef __cplusplus
}
#endif

