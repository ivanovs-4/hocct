
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Wire.h"

#include "HOCCT_ModelingData_TopoDS_Shell.h"

#include "HOCCT_ModelingData_TopoDS_Solid.h"

#include "HOCCT_ModelingData_TopoDS_Compound.h"

#include "HOCCT_ModelingData_TopoDS_CompSolid.h"

#include "HOCCT_ModelingData_TopoDS_Shape.h"

#include "TopoDS_Builder.hxx"

#include "HOCCT_ModelingData_TopoDS_Builder.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

TOPODS_BUILDER_DEF_VIRT(TopoDS_Builder)
TOPODS_BUILDER_DEF_NONVIRT(TopoDS_Builder)
TOPODS_BUILDER_DEF_ACCESSOR(TopoDS_Builder)

