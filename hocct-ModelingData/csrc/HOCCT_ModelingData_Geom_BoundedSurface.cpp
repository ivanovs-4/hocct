
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Surface.h"

#include "Geom_BoundedSurface.hxx"

#include "HOCCT_ModelingData_Geom_BoundedSurface.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_SURFACE_DEF_VIRT(Geom_BoundedSurface)
GEOM_GEOMETRY_DEF_VIRT(Geom_BoundedSurface)
GEOM_BOUNDEDSURFACE_DEF_VIRT(Geom_BoundedSurface)
GEOM_BOUNDEDSURFACE_DEF_NONVIRT(Geom_BoundedSurface)
GEOM_BOUNDEDSURFACE_DEF_ACCESSOR(Geom_BoundedSurface)

