{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.Interface

instance (IBRepFilletAPI_MakeFillet a, FPtr a) =>
         Castable (a) (Ptr RawBRepFilletAPI_MakeFillet)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepFilletAPI_MakeFillet)
           (Ptr RawBRepFilletAPI_MakeFillet)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
