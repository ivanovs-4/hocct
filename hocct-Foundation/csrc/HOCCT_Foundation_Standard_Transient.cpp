
#include "MacroPatternMatch.h"

#include "Standard_Transient.hxx"

#include "HOCCT_Foundation_Standard_Transient.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

STANDARD_TRANSIENT_DEF_VIRT(Standard_Transient)
STANDARD_TRANSIENT_DEF_NONVIRT(Standard_Transient)
STANDARD_TRANSIENT_DEF_ACCESSOR(Standard_Transient)

