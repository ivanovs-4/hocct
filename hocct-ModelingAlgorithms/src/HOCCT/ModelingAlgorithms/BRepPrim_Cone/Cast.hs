{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cone.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.Interface

instance (IBRepPrim_Cone a, FPtr a) =>
         Castable (a) (Ptr RawBRepPrim_Cone)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (BRepPrim_Cone) (Ptr RawBRepPrim_Cone)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
