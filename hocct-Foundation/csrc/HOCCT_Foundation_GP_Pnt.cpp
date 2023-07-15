
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_XYZ.h"

#include "gp_Pnt.hxx"

#include "HOCCT_Foundation_GP_Pnt.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GP_PNT_DEF_VIRT(gp_Pnt)
GP_PNT_DEF_NONVIRT(gp_Pnt)
GP_PNT_DEF_ACCESSOR(gp_Pnt)

