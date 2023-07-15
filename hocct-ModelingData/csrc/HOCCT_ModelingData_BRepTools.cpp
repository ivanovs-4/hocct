
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "HOCCT_ModelingData_Message_ProgressRange.h"

#include "BRepTools.hxx"

#include "HOCCT_ModelingData_BRepTools.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPTOOLS_DEF_VIRT(BRepTools)
BREPTOOLS_DEF_NONVIRT(BRepTools)
BREPTOOLS_DEF_ACCESSOR(BRepTools)

