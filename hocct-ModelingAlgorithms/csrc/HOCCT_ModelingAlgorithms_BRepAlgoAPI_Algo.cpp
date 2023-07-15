
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h"

#include "BRepAlgoAPI_Algo.hxx"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Algo.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepAlgoAPI_Algo)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepAlgoAPI_Algo)
BREPALGOAPI_ALGO_DEF_VIRT(BRepAlgoAPI_Algo)
BREPALGOAPI_ALGO_DEF_NONVIRT(BRepAlgoAPI_Algo)
BREPALGOAPI_ALGO_DEF_ACCESSOR(BRepAlgoAPI_Algo)

