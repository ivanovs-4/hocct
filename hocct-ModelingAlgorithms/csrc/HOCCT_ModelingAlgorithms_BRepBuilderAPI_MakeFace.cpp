
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Face.h"

#include "HOCCT_ModelingData_TopoDS_Wire.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepBuilderAPI_MakeFace.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeFace.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_MAKEFACE_DEF_VIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_MAKEFACE_DEF_NONVIRT(BRepBuilderAPI_MakeFace)
BREPBUILDERAPI_MAKEFACE_DEF_ACCESSOR(BRepBuilderAPI_MakeFace)

