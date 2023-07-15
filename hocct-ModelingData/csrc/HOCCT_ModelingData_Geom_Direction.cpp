
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Vector.h"

#include "Geom_Direction.hxx"

#include "HOCCT_ModelingData_Geom_Direction.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_VECTOR_DEF_VIRT(Geom_Direction)
GEOM_GEOMETRY_DEF_VIRT(Geom_Direction)
GEOM_DIRECTION_DEF_VIRT(Geom_Direction)
GEOM_DIRECTION_DEF_NONVIRT(Geom_Direction)
GEOM_DIRECTION_DEF_ACCESSOR(Geom_Direction)

