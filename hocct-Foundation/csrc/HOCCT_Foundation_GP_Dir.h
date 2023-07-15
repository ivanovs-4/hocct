
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_DIR_DECL_VIRT(Type) \



#define GP_DIR_DECL_NONVIRT(Type) \
Type##_p Type##_newGP_Dir_FromVec ( gp_Vec_p theV );\
Type##_p Type##_newGP_Dir_FromXYZ ( gp_XYZ_p theCoord );\
Type##_p Type##_newGP_Dir ( double theXp, double theYp, double theZp );


#define GP_DIR_DECL_ACCESSOR(Type) \



#define GP_DIR_DEF_VIRT(Type) \



#define GP_DIR_DEF_NONVIRT(Type) \
Type##_p Type##_newGP_Dir_FromVec ( gp_Vec_p theV ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Vec, gp_Vec_t>(*(theV)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Dir_FromXYZ ( gp_XYZ_p theCoord ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_XYZ, gp_XYZ_t>(*(theCoord)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Dir ( double theXp, double theYp, double theZp ) {\
Type* newp=new Type(theXp, theYp, theZp);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define GP_DIR_DEF_ACCESSOR(Type) \



GP_DIR_DECL_VIRT(gp_Dir)
GP_DIR_DECL_NONVIRT(gp_Dir)
GP_DIR_DECL_ACCESSOR(gp_Dir)

#ifdef __cplusplus
}
#endif

