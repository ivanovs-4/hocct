
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Revolution.h"

#include "BRepPrim_Torus.hxx"

#include "HOCCT_ModelingAlgorithms_BRepPrim_Torus.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

BREPPRIM_REVOLUTION_DEF_VIRT(BRepPrim_Torus)
BREPPRIM_ONEAXIS_DEF_VIRT(BRepPrim_Torus)
BREPPRIM_TORUS_DEF_VIRT(BRepPrim_Torus)
BREPPRIM_TORUS_DEF_NONVIRT(BRepPrim_Torus)
BREPPRIM_TORUS_DEF_ACCESSOR(BRepPrim_Torus)

