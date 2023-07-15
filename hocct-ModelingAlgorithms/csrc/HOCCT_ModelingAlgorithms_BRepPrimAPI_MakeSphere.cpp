
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Sphere.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "BRepPrimAPI_MakeSphere.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeSphere.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIMAPI_MAKEONEAXIS_DEF_VIRT(BRepPrimAPI_MakeSphere)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepPrimAPI_MakeSphere)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepPrimAPI_MakeSphere)
BREPPRIMAPI_MAKESPHERE_DEF_VIRT(BRepPrimAPI_MakeSphere)
BREPPRIMAPI_MAKESPHERE_DEF_NONVIRT(BRepPrimAPI_MakeSphere)
BREPPRIMAPI_MAKESPHERE_DEF_ACCESSOR(BRepPrimAPI_MakeSphere)

