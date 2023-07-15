
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "TopoDS_CompSolid.hxx"

#include "HOCCT_ModelingData_TopoDS_CompSolid.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

TOPODS_SHAPE_DEF_VIRT(TopoDS_CompSolid)
TOPODS_COMPSOLID_DEF_VIRT(TopoDS_CompSolid)
TOPODS_COMPSOLID_DEF_NONVIRT(TopoDS_CompSolid)
TOPODS_COMPSOLID_DEF_ACCESSOR(TopoDS_CompSolid)

