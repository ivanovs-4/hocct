
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_BoundedSurface.h"

#include "Geom_BezierSurface.hxx"

#include "HOCCT_ModelingData_Geom_BezierSurface.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_BOUNDEDSURFACE_DEF_VIRT(Geom_BezierSurface)
GEOM_SURFACE_DEF_VIRT(Geom_BezierSurface)
GEOM_GEOMETRY_DEF_VIRT(Geom_BezierSurface)
GEOM_BEZIERSURFACE_DEF_VIRT(Geom_BezierSurface)
GEOM_BEZIERSURFACE_DEF_NONVIRT(Geom_BezierSurface)
GEOM_BEZIERSURFACE_DEF_ACCESSOR(Geom_BezierSurface)

