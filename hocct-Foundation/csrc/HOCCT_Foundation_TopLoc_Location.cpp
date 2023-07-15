
#include "MacroPatternMatch.h"

#include "TopLoc_Location.hxx"

#include "HOCCT_Foundation_TopLoc_Location.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

TOPLOC_LOCATION_DEF_VIRT(TopLoc_Location)
TOPLOC_LOCATION_DEF_NONVIRT(TopLoc_Location)
TOPLOC_LOCATION_DEF_ACCESSOR(TopLoc_Location)

