
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_TrimmedCurve.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "HOCCT_ModelingData_GC_Root.h"

#include "GC_MakeSegment.hxx"

#include "HOCCT_ModelingData_GC_MakeSegment.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GC_ROOT_DEF_VIRT(GC_MakeSegment)
GC_MAKESEGMENT_DEF_VIRT(GC_MakeSegment)
GC_MAKESEGMENT_DEF_NONVIRT(GC_MakeSegment)
GC_MAKESEGMENT_DEF_ACCESSOR(GC_MakeSegment)

