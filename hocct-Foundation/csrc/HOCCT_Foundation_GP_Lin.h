
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_LIN_DECL_VIRT(Type) \



#define GP_LIN_DECL_NONVIRT(Type) \
Type##_p Type##_newGP_Lin ( gp_Pnt_p theP, gp_Dir_p theV );


#define GP_LIN_DECL_ACCESSOR(Type) \



#define GP_LIN_DEF_VIRT(Type) \



#define GP_LIN_DEF_NONVIRT(Type) \
Type##_p Type##_newGP_Lin ( gp_Pnt_p theP, gp_Dir_p theV ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(theP)), from_nonconstref_to_nonconstref<gp_Dir, gp_Dir_t>(*(theV)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define GP_LIN_DEF_ACCESSOR(Type) \



GP_LIN_DECL_VIRT(gp_Lin)
GP_LIN_DECL_NONVIRT(gp_Lin)
GP_LIN_DECL_ACCESSOR(gp_Lin)

#ifdef __cplusplus
}
#endif

