
#include "MacroPatternMatch.h"

#include "BRepBuilderAPI_Command.hxx"

#include "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Command.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPBUILDERAPI_COMMAND_DEF_VIRT(BRepBuilderAPI_Command)
BREPBUILDERAPI_COMMAND_DEF_NONVIRT(BRepBuilderAPI_Command)
BREPBUILDERAPI_COMMAND_DEF_ACCESSOR(BRepBuilderAPI_Command)

