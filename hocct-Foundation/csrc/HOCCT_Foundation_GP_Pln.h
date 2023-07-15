
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_PLN_DECL_VIRT(Type) \



#define GP_PLN_DECL_NONVIRT(Type) \
Type##_p Type##_newGP_Pln_OXY (  );\
Type##_p Type##_newGP_Pln ( gp_Pnt_p theP, gp_Dir_p theV );\
Type##_p Type##_newGP_Pln_CartesianABCD ( double theA, double theB, double theC, double theD );


#define GP_PLN_DECL_ACCESSOR(Type) \



#define GP_PLN_DEF_VIRT(Type) \



#define GP_PLN_DEF_NONVIRT(Type) \
Type##_p Type##_newGP_Pln_OXY (  ) {\
Type* newp=new Type();return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Pln ( gp_Pnt_p theP, gp_Dir_p theV ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(theP)), from_nonconstref_to_nonconstref<gp_Dir, gp_Dir_t>(*(theV)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
Type##_p Type##_newGP_Pln_CartesianABCD ( double theA, double theB, double theC, double theD ) {\
Type* newp=new Type(theA, theB, theC, theD);return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}


#define GP_PLN_DEF_ACCESSOR(Type) \



GP_PLN_DECL_VIRT(gp_Pln)
GP_PLN_DECL_NONVIRT(gp_Pln)
GP_PLN_DECL_ACCESSOR(gp_Pln)

#ifdef __cplusplus
}
#endif

