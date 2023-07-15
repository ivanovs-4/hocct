{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.Interface

instance (IBRepPrim_Sphere a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrim_Sphere)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (BRepPrim_Sphere) (Ptr RawBRepPrim_Sphere)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
