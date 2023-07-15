
#include "MacroPatternMatch.h"

#include "gp_Trsf.hxx"

#include "HOCCT_Foundation_GP_Trsf.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GP_TRSF_DEF_VIRT(gp_Trsf)
GP_TRSF_DEF_NONVIRT(gp_Trsf)
GP_TRSF_DEF_ACCESSOR(gp_Trsf)

