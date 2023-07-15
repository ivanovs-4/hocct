
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "HOCCT_Foundation_GP_Dir.h"

#include "gp_Lin.hxx"

#include "HOCCT_Foundation_GP_Lin.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GP_LIN_DEF_VIRT(gp_Lin)
GP_LIN_DEF_NONVIRT(gp_Lin)
GP_LIN_DEF_ACCESSOR(gp_Lin)

