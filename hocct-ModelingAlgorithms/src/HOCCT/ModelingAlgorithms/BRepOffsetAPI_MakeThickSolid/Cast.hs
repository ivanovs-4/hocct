{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Interface

instance (IBRepOffsetAPI_MakeThickSolid a, FPtr a) =>
         Castable (a) (Ptr RawBRepOffsetAPI_MakeThickSolid)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepOffsetAPI_MakeThickSolid)
           (Ptr RawBRepOffsetAPI_MakeThickSolid)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
