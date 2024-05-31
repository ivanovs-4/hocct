
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Cylinder.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "BRepPrimAPI_MakeCylinder.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCylinder.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIMAPI_MAKEONEAXIS_DEF_VIRT(BRepPrimAPI_MakeCylinder)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepPrimAPI_MakeCylinder)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepPrimAPI_MakeCylinder)
BREPPRIMAPI_MAKECYLINDER_DEF_VIRT(BRepPrimAPI_MakeCylinder)
BREPPRIMAPI_MAKECYLINDER_DEF_NONVIRT(BRepPrimAPI_MakeCylinder)
BREPPRIMAPI_MAKECYLINDER_DEF_ACCESSOR(BRepPrimAPI_MakeCylinder)

