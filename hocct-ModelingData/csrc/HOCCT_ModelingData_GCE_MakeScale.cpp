
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_Trsf.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "gce_MakeScale.hxx"

#include "HOCCT_ModelingData_GCE_MakeScale.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GCE_MAKESCALE_DEF_VIRT(gce_MakeScale)
GCE_MAKESCALE_DEF_NONVIRT(gce_MakeScale)
GCE_MAKESCALE_DEF_ACCESSOR(gce_MakeScale)

