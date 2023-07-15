
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Wire.h"

#include "HOCCT_ModelingData_TopoDS_Vertex.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepOffsetAPI_ThruSections.hxx"

#include "HOCCT_ModelingAlgorithms_BRepOffsetAPI_ThruSections.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepOffsetAPI_ThruSections)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepOffsetAPI_ThruSections)
BREPOFFSETAPI_THRUSECTIONS_DEF_VIRT(BRepOffsetAPI_ThruSections)
BREPOFFSETAPI_THRUSECTIONS_DEF_NONVIRT(BRepOffsetAPI_ThruSections)
BREPOFFSETAPI_THRUSECTIONS_DEF_ACCESSOR(BRepOffsetAPI_ThruSections)

