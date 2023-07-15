
#include "MacroPatternMatch.h"

#include "gp_XYZ.hxx"

#include "HOCCT_Foundation_GP_XYZ.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GP_XYZ_DEF_VIRT(gp_XYZ)
GP_XYZ_DEF_NONVIRT(gp_XYZ)
GP_XYZ_DEF_ACCESSOR(gp_XYZ)

