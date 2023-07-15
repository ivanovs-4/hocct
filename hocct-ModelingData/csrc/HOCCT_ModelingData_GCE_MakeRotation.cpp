
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_Trsf.h"

#include "HOCCT_Foundation_GP_Lin.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "HOCCT_Foundation_GP_Dir.h"

#include "gce_MakeRotation.hxx"

#include "HOCCT_ModelingData_GCE_MakeRotation.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GCE_MAKEROTATION_DEF_VIRT(gce_MakeRotation)
GCE_MAKEROTATION_DEF_NONVIRT(gce_MakeRotation)
GCE_MAKEROTATION_DEF_ACCESSOR(gce_MakeRotation)

