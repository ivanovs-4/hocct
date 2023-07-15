
#include "MacroPatternMatch.h"

#include "HOCCT_Foundation_GP_Trsf.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "HOCCT_Foundation_GP_Lin.h"

#include "HOCCT_Foundation_GP_Dir.h"

#include "HOCCT_Foundation_GP_Pln.h"

#include "gce_MakeMirror.hxx"

#include "HOCCT_ModelingData_GCE_MakeMirror.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GCE_MAKEMIRROR_DEF_VIRT(gce_MakeMirror)
GCE_MAKEMIRROR_DEF_NONVIRT(gce_MakeMirror)
GCE_MAKEMIRROR_DEF_ACCESSOR(gce_MakeMirror)

