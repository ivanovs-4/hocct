
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"

#include "BRepBuilderAPI_MakeShape.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_MakeShape)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_MakeShape)
BREPBUILDERAPI_MAKESHAPE_DEF_NONVIRT(BRepBuilderAPI_MakeShape)
BREPBUILDERAPI_MAKESHAPE_DEF_ACCESSOR(BRepBuilderAPI_MakeShape)

