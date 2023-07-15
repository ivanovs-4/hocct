
#ifdef __cplusplus
extern "C" {
#endif

#pragma once


#include "hocct-ModelingDataType.h"

#include "HOCCT_ModelingData_GC_Root.h"

#include "hocct-FoundationType.h"


#define GC_MAKESEGMENT_DECL_VIRT(Type) \



#define GC_MAKESEGMENT_DECL_NONVIRT(Type) \
Type##_p Type##_newGC_MakeSegment ( gp_Pnt_p P1, gp_Pnt_p P2 );\
void* Type##_gC_MakeSegment_Value ( Type##_p p );


#define GC_MAKESEGMENT_DECL_ACCESSOR(Type) \



#define GC_MAKESEGMENT_DEF_VIRT(Type) \



#define GC_MAKESEGMENT_DEF_NONVIRT(Type) \
Type##_p Type##_newGC_MakeSegment ( gp_Pnt_p P1, gp_Pnt_p P2 ) {\
Type* newp=new Type(from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(P1)), from_nonconstref_to_nonconstref<gp_Pnt, gp_Pnt_t>(*(P2)));return from_nonconst_to_nonconst<Type##_t, Type>(newp);\
}\
\
void* Type##_gC_MakeSegment_Value ( Type##_p p ) {\
opencascade::handle<Geom_TrimmedCurve>* r=new opencascade::handle<Geom_TrimmedCurve>(((TYPECASTMETHOD(Type, gC_MakeSegment_Value, GC_MakeSegment))(p))->Value());return static_cast<void*>(r);\
}


#define GC_MAKESEGMENT_DEF_ACCESSOR(Type) \



GC_ROOT_DECL_VIRT(GC_MakeSegment)
GC_MAKESEGMENT_DECL_VIRT(GC_MakeSegment)
GC_MAKESEGMENT_DECL_NONVIRT(GC_MakeSegment)
GC_MAKESEGMENT_DECL_ACCESSOR(GC_MakeSegment)

#ifdef __cplusplus
}
#endif

