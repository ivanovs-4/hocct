
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_XYZ_DECL_VIRT(Type) \



#define GP_XYZ_DECL_NONVIRT(Type) \
Type##_p Type##_newGP_XYZ ( double theX, double theY, double theZ );


#define GP_XYZ_DECL_ACCESSOR(Type) \



#define GP_XYZ_DEF_VIRT(Type) \



#define GP_XYZ_DEF_NONVIRT(Type) \
Type##_p Type##_newGP_XYZ ( double theX, double theY, double theZ ) {\
Type* newp=new Type(theX, theY, theZ);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define GP_XYZ_DEF_ACCESSOR(Type) \



GP_XYZ_DECL_VIRT(gp_XYZ)
GP_XYZ_DECL_NONVIRT(gp_XYZ)
GP_XYZ_DECL_ACCESSOR(gp_XYZ)

#ifdef __cplusplus
}
#endif

