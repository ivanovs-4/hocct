{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_Point.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_Point.RawType
import HOCCT.ModelingData.Geom_Point.Interface

instance (IGeom_Point a, FPtr a) =>
         Castable (a) (Ptr RawGeom_Point)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (Geom_Point) (Ptr RawGeom_Point) where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
