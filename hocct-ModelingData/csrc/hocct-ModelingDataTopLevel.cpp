
#include "MacroPatternMatch.h"

#include "hocct-ModelingDataTopLevel.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (to_nonconst<oname,cname ## _t>), \
  (to_nonconst<cname,cname ## _t>) )


