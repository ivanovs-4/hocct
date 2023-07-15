
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_Vec.h"

#include "HOCCT_Foundation_GP_XYZ.h"

#include "gp_Dir.hxx"

#include "HOCCT_Foundation_GP_Dir.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GP_DIR_DEF_VIRT(gp_Dir)
GP_DIR_DEF_NONVIRT(gp_Dir)
GP_DIR_DEF_ACCESSOR(gp_Dir)

