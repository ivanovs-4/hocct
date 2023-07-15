{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Interface

instance (IBRepPrimAPI_MakeSphere a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeSphere)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeSphere) (Ptr RawBRepPrimAPI_MakeSphere)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
