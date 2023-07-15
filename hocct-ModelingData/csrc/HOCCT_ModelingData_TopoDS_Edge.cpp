
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "TopoDS_Edge.hxx"

#include "HOCCT_ModelingData_TopoDS_Edge.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

TOPODS_SHAPE_DEF_VIRT(TopoDS_Edge)
TOPODS_EDGE_DEF_VIRT(TopoDS_Edge)
TOPODS_EDGE_DEF_NONVIRT(TopoDS_Edge)
TOPODS_EDGE_DEF_ACCESSOR(TopoDS_Edge)

