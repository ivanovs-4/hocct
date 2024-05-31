
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Cone.h"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h"

#include "BRepPrimAPI_MakeCone.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCone.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIMAPI_MAKEONEAXIS_DEF_VIRT(BRepPrimAPI_MakeCone)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepPrimAPI_MakeCone)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepPrimAPI_MakeCone)
BREPPRIMAPI_MAKECONE_DEF_VIRT(BRepPrimAPI_MakeCone)
BREPPRIMAPI_MAKECONE_DEF_NONVIRT(BRepPrimAPI_MakeCone)
BREPPRIMAPI_MAKECONE_DEF_ACCESSOR(BRepPrimAPI_MakeCone)

