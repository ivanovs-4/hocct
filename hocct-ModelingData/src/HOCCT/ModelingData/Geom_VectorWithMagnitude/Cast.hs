{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Geom_VectorWithMagnitude.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Geom_VectorWithMagnitude.RawType
import HOCCT.ModelingData.Geom_VectorWithMagnitude.Interface

instance (IGeom_VectorWithMagnitude a, FPtr a) =>
         Castable (a) (Ptr RawGeom_VectorWithMagnitude)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Geom_VectorWithMagnitude)
           (Ptr RawGeom_VectorWithMagnitude)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
