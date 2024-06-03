
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "TopExp_Explorer.hxx"

#include "HOCCT_ModelingData_TopExp_Explorer.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

TOPEXP_EXPLORER_DEF_VIRT(TopExp_Explorer)
TOPEXP_EXPLORER_DEF_NONVIRT(TopExp_Explorer)
TOPEXP_EXPLORER_DEF_ACCESSOR(TopExp_Explorer)

