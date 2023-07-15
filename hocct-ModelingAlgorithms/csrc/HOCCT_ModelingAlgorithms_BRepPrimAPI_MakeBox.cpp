
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shell.h"

#include "HOCCT_ModelingData_TopoDS_Solid.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "BRepPrimAPI_MakeBox.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeBox.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIMAPI_MAKEONEAXIS_DEF_VIRT(BRepPrimAPI_MakeBox)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepPrimAPI_MakeBox)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepPrimAPI_MakeBox)
BREPPRIMAPI_MAKEBOX_DEF_VIRT(BRepPrimAPI_MakeBox)
BREPPRIMAPI_MAKEBOX_DEF_NONVIRT(BRepPrimAPI_MakeBox)
BREPPRIMAPI_MAKEBOX_DEF_ACCESSOR(BRepPrimAPI_MakeBox)

