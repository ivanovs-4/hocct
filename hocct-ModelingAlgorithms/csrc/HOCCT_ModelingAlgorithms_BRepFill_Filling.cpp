
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_TopoDS_Face.h"

#include "HOCCT_Foundation_GP_Pnt.h"

#include "HOCCT_ModelingData_TopoDS_Edge.h"

#include "BRepFill_Filling.hxx"

#include "HOCCT_ModelingAlgorithms_BRepFill_Filling.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPFILL_FILLING_DEF_VIRT(BRepFill_Filling)
BREPFILL_FILLING_DEF_NONVIRT(BRepFill_Filling)
BREPFILL_FILLING_DEF_ACCESSOR(BRepFill_Filling)

