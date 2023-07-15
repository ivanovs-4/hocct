
#include "MacroPatternMatch.h"

#include "HOCCT_ModelingData_Geom_Vector.h"

#include "Geom_VectorWithMagnitude.hxx"

#include "HOCCT_ModelingData_Geom_VectorWithMagnitude.h"



#define CHECKPROTECT(x,y) FXIS_PAREN(IS_ ## x ## _ ## y ## _PROTECTED)

#define TYPECASTMETHOD(cname,mname,oname) \
  FXIIF( CHECKPROTECT(cname,mname) ) ( \
  (from_nonconst_to_nonconst<oname,cname ## _t>), \
  (from_nonconst_to_nonconst<cname,cname ## _t>) )

GEOM_VECTOR_DEF_VIRT(Geom_VectorWithMagnitude)
GEOM_GEOMETRY_DEF_VIRT(Geom_VectorWithMagnitude)
GEOM_VECTORWITHMAGNITUDE_DEF_VIRT(Geom_VectorWithMagnitude)
GEOM_VECTORWITHMAGNITUDE_DEF_NONVIRT(Geom_VectorWithMagnitude)
GEOM_VECTORWITHMAGNITUDE_DEF_ACCESSOR(Geom_VectorWithMagnitude)

