{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.Interface

instance (IBRepOffsetAPI_MakeOffsetShape a, FPtr a) =>
         Castable (a) (Ptr RawBRepOffsetAPI_MakeOffsetShape)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepOffsetAPI_MakeOffsetShape)
           (Ptr RawBRepOffsetAPI_MakeOffsetShape)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
