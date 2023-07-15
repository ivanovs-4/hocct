
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Conic.h"

#include "Geom_Hyperbola.hxx"

#include "HOCCT_ModelingData_Geom_Hyperbola.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_CONIC_DEF_VIRT(Geom_Hyperbola)
GEOM_CURVE_DEF_VIRT(Geom_Hyperbola)
GEOM_GEOMETRY_DEF_VIRT(Geom_Hyperbola)
GEOM_HYPERBOLA_DEF_VIRT(Geom_Hyperbola)
GEOM_HYPERBOLA_DEF_NONVIRT(Geom_Hyperbola)
GEOM_HYPERBOLA_DEF_ACCESSOR(Geom_Hyperbola)

