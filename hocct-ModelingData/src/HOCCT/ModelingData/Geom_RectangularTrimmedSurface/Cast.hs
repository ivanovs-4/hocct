{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_RectangularTrimmedSurface.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_RectangularTrimmedSurface.RawType
import HOCCT.ModelingData.Geom_RectangularTrimmedSurface.Interface

instance (IGeom_RectangularTrimmedSurface a, FPtr a) =>
         Castable (a) (Ptr RawGeom_RectangularTrimmedSurface)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_RectangularTrimmedSurface)
           (Ptr RawGeom_RectangularTrimmedSurface)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
