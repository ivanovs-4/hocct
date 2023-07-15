
#include "MacroPatternMatch.h"

#include "Message_ProgressRange.hxx"

#include "HOCCT_ModelingData_Message_ProgressRange.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

MESSAGE_PROGRESSRANGE_DEF_VIRT(Message_ProgressRange)
MESSAGE_PROGRESSRANGE_DEF_NONVIRT(Message_ProgressRange)
MESSAGE_PROGRESSRANGE_DEF_ACCESSOR(Message_ProgressRange)

