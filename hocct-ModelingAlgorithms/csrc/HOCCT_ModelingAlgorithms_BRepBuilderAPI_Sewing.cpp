
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "BRepBuilderAPI_Sewing.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Sewing.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_SEWING_DEF_VIRT(BRepBuilderAPI_Sewing)
BREPBUILDERAPI_SEWING_DEF_NONVIRT(BRepBuilderAPI_Sewing)
BREPBUILDERAPI_SEWING_DEF_ACCESSOR(BRepBuilderAPI_Sewing)

