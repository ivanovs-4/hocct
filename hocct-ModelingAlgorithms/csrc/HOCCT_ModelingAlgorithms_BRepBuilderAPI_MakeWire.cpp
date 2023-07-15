
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Wire.h"

#include "HOCCT_ModelingData_TopoDS_Edge.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepBuilderAPI_MakeWire.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeWire.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_MAKEWIRE_DEF_VIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_MAKEWIRE_DEF_NONVIRT(BRepBuilderAPI_MakeWire)
BREPBUILDERAPI_MAKEWIRE_DEF_ACCESSOR(BRepBuilderAPI_MakeWire)

