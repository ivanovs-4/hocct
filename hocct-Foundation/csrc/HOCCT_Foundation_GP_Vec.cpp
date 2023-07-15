
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_XYZ.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "gp_Vec.hxx"

#include "HOCCT_Foundation_GP_Vec.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GP_VEC_DEF_VIRT(gp_Vec)
GP_VEC_DEF_NONVIRT(gp_Vec)
GP_VEC_DEF_ACCESSOR(gp_Vec)

