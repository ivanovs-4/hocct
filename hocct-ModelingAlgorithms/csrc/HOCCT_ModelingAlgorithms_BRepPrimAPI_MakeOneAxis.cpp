
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Solid.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepPrimAPI_MakeOneAxis.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepPrimAPI_MakeOneAxis)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepPrimAPI_MakeOneAxis)
BREPPRIMAPI_MAKEONEAXIS_DEF_VIRT(BRepPrimAPI_MakeOneAxis)
BREPPRIMAPI_MAKEONEAXIS_DEF_NONVIRT(BRepPrimAPI_MakeOneAxis)
BREPPRIMAPI_MAKEONEAXIS_DEF_ACCESSOR(BRepPrimAPI_MakeOneAxis)

