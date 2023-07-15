
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Solid.h"

#include "HOCCT_ModelingData_TopoDS_Shell.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepBuilderAPI_MakeSolid.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeSolid.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_MAKESOLID_DEF_VIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_MAKESOLID_DEF_NONVIRT(BRepBuilderAPI_MakeSolid)
BREPBUILDERAPI_MAKESOLID_DEF_ACCESSOR(BRepBuilderAPI_MakeSolid)

