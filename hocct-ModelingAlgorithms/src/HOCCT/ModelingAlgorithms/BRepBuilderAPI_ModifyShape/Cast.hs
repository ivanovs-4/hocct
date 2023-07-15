{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.Interface

instance (IBRepBuilderAPI_ModifyShape a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_ModifyShape)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_ModifyShape)
           (Ptr RawBRepBuilderAPI_ModifyShape)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
