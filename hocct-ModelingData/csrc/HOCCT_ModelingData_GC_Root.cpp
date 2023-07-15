
#include "MacroPatternMatch.h"

#include "GC_Root.hxx"

#include "HOCCT_ModelingData_GC_Root.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GC_ROOT_DEF_VIRT(GC_Root)
GC_ROOT_DEF_NONVIRT(GC_Root)
GC_ROOT_DEF_ACCESSOR(GC_Root)

