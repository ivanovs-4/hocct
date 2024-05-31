{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.Interface

instance (IBRepPrimAPI_MakeCone a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeCone)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeCone) (Ptr RawBRepPrimAPI_MakeCone)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
