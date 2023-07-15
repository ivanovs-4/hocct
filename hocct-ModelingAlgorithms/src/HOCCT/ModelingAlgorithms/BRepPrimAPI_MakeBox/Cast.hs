{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.Interface

instance (IBRepPrimAPI_MakeBox a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrimAPI_MakeBox)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepPrimAPI_MakeBox) (Ptr RawBRepPrimAPI_MakeBox)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
