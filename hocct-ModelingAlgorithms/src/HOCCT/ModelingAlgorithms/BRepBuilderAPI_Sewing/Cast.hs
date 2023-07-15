{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.Interface

instance (IBRepBuilderAPI_Sewing a, FPtr a) =>
         Castable (a) (Ptr RawBRepBuilderAPI_Sewing)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepBuilderAPI_Sewing) (Ptr RawBRepBuilderAPI_Sewing)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
