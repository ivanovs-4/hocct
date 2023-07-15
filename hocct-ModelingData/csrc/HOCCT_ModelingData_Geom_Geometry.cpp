
#include "MacroPatternMatch.h"

#include "Geom_Geometry.hxx"

#include "HOCCT_ModelingData_Geom_Geometry.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_GEOMETRY_DEF_VIRT(Geom_Geometry)
GEOM_GEOMETRY_DEF_NONVIRT(Geom_Geometry)
GEOM_GEOMETRY_DEF_ACCESSOR(Geom_Geometry)

