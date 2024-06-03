{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Interface

instance (IBRepFilletAPI_MakeChamfer a, FPtr a) =>
         Castable (a) (Ptr RawBRepFilletAPI_MakeChamfer)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepFilletAPI_MakeChamfer)
           (Ptr RawBRepFilletAPI_MakeChamfer)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
