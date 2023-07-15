
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"


#define GC_ROOT_DECL_VIRT(Type) \



#define GC_ROOT_DECL_NONVIRT(Type) \
bool Type##_gC_Root_IsDone ( Type##_p p );


#define GC_ROOT_DECL_ACCESSOR(Type) \



#define GC_ROOT_DEF_VIRT(Type) \



#define GC_ROOT_DEF_NONVIRT(Type) \
bool Type##_gC_Root_IsDone ( Type##_p p ) {\
return ((TYPECASTMETHOD(Type, gC_Root_IsDone, GC_Root))(p))->IsDone();\
}


#define GC_ROOT_DEF_ACCESSOR(Type) \



GC_ROOT_DECL_VIRT(GC_Root)
GC_ROOT_DECL_NONVIRT(GC_Root)
GC_ROOT_DECL_ACCESSOR(GC_Root)

#ifdef __cplusplus
}
#endif

