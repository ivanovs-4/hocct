
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Algo.h"

#include "BRepAlgoAPI_BuilderAlgo.hxx"

#include "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BuilderAlgo.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPALGOAPI_ALGO_DEF_VIRT(BRepAlgoAPI_BuilderAlgo)
BREPBUILDERAPI_MAKESHAPE_DEF_VIRT(BRepAlgoAPI_BuilderAlgo)
BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepAlgoAPI_BuilderAlgo)
BREPALGOAPI_BUILDERALGO_DEF_VIRT(BRepAlgoAPI_BuilderAlgo)
BREPALGOAPI_BUILDERALGO_DEF_NONVIRT(BRepAlgoAPI_BuilderAlgo)
BREPALGOAPI_BUILDERALGO_DEF_ACCESSOR(BRepAlgoAPI_BuilderAlgo)

