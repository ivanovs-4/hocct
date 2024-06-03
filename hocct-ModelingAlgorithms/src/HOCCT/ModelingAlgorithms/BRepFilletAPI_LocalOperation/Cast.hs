{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface

instance (IBRepFilletAPI_LocalOperation a, FPtr a) =>
         Castable (a) (Ptr RawBRepFilletAPI_LocalOperation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepFilletAPI_LocalOperation)
           (Ptr RawBRepFilletAPI_LocalOperation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
