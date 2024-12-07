
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Face.h"

#include "HOCCT_ModelingData_TopoDS_Builder.h"

#include "BRep_Builder.hxx"

#include "HOCCT_ModelingData_BRep_Builder.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

TOPODS_BUILDER_DEF_VIRT(BRep_Builder)
BREP_BUILDER_DEF_VIRT(BRep_Builder)
BREP_BUILDER_DEF_NONVIRT(BRep_Builder)
BREP_BUILDER_DEF_ACCESSOR(BRep_Builder)

