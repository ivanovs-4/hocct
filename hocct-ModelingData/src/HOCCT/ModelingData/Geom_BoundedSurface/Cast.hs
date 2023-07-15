{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_BoundedSurface.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_BoundedSurface.RawType
import HOCCT.ModelingData.Geom_BoundedSurface.Interface

instance (IGeom_BoundedSurface a, FPtr a) =>
         Castable (a) (Ptr RawGeom_BoundedSurface)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_BoundedSurface) (Ptr RawGeom_BoundedSurface)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
