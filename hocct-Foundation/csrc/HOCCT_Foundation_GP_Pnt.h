
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_PNT_DECL_VIRT(Type) \



#define GP_PNT_DECL_NONVIRT(Type) \
Type##_p Type##_newGP_Pnt ( double theXp, double theYp, double theZp );\
Type##_p Type##_newGP_Pnt_FromXYZ ( gp_XYZ_p theCoord );


#define GP_PNT_DECL_ACCESSOR(Type) \



#define GP_PNT_DEF_VIRT(Type) \



#define GP_PNT_DEF_NONVIRT(Type) \
Type##_p Type##_newGP_Pnt ( double theXp, double theYp, double theZp ) {\
Type* newp=new Type(theXp, theYp, theZp);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Pnt_FromXYZ ( gp_XYZ_p theCoord ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_XYZ, gp_XYZ_t>(*(theCoord)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define GP_PNT_DEF_ACCESSOR(Type) \



GP_PNT_DECL_VIRT(gp_Pnt)
GP_PNT_DECL_NONVIRT(gp_Pnt)
GP_PNT_DECL_ACCESSOR(gp_Pnt)

#ifdef __cplusplus
}
#endif

