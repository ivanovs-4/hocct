
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-FoundationType.h"


#define GP_TRSF_DECL_VIRT(Type) \



#define GP_TRSF_DECL_NONVIRT(Type) \
gp_Trsf_p Type##_gP_Trsf_Multiplied ( Type##_p p, gp_Trsf_p T );\
void Type##_gP_Trsf_Multiply ( Type##_p p, gp_Trsf_p T );\
void Type##_gP_Trsf_PreMultiply ( Type##_p p, gp_Trsf_p T );\
gp_Trsf_p Type##_gP_Trsf_Inverted ( Type##_p p );\
void Type##_gP_Trsf_Invert ( Type##_p p );


#define GP_TRSF_DECL_ACCESSOR(Type) \



#define GP_TRSF_DEF_VIRT(Type) \



#define GP_TRSF_DEF_NONVIRT(Type) \
gp_Trsf_p Type##_gP_Trsf_Multiplied ( Type##_p p, gp_Trsf_p T ) {\
return from_nonconst_to_nonconst<gp_Trsf_t, gp_Trsf>(new gp_Trsf(((TYPECASTMETHOD(Type, gP_Trsf_Multiplied, gp_Trsf))(p))->Multiplied(from_nonconstref_to_nonconstref<gp_Trsf, gp_Trsf_t>(*(T)))));\
}\
\
void Type##_gP_Trsf_Multiply ( Type##_p p, gp_Trsf_p T ) {\
((TYPECASTMETHOD(Type, gP_Trsf_Multiply, gp_Trsf))(p))->Multiply(from_nonconstref_to_nonconstref<gp_Trsf, gp_Trsf_t>(*(T)));\
}\
\
void Type##_gP_Trsf_PreMultiply ( Type##_p p, gp_Trsf_p T ) {\
((TYPECASTMETHOD(Type, gP_Trsf_PreMultiply, gp_Trsf))(p))->PreMultiply(from_nonconstref_to_nonconstref<gp_Trsf, gp_Trsf_t>(*(T)));\
}\
\
gp_Trsf_p Type##_gP_Trsf_Inverted ( Type##_p p ) {\
return from_nonconst_to_nonconst<gp_Trsf_t, gp_Trsf>(new gp_Trsf(((TYPECASTMETHOD(Type, gP_Trsf_Inverted, gp_Trsf))(p))->Inverted()));\
}\
\
void Type##_gP_Trsf_Invert ( Type##_p p ) {\
((TYPECASTMETHOD(Type, gP_Trsf_Invert, gp_Trsf))(p))->Invert();\
}


#define GP_TRSF_DEF_ACCESSOR(Type) \



GP_TRSF_DECL_VIRT(gp_Trsf)
GP_TRSF_DECL_NONVIRT(gp_Trsf)
GP_TRSF_DECL_ACCESSOR(gp_Trsf)

#ifdef __cplusplus
}
#endif

