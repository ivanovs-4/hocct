
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BooleanOperation.h"

#include "BRepAlgoAPI_Cut.hxx"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Cut.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPALGOAPI_BOOLEANOPERATION_DEF_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_BUILDERALGO_DEF_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_ALGO_DEF_VIRT(BRepAlgoAPI_Cut)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepAlgoAPI_Cut)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_CUT_DEF_VIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_CUT_DEF_NONVIRT(BRepAlgoAPI_Cut)
BREPALGOAPI_CUT_DEF_ACCESSOR(BRepAlgoAPI_Cut)

