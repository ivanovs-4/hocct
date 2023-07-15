{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Cast
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Interface

instance (IBRepAlgoAPI_BooleanOperation a, FPtr a) =>
         Castable (a) (Ptr RawBRepAlgoAPI_BooleanOperation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepAlgoAPI_BooleanOperation)
           (Ptr RawBRepAlgoAPI_BooleanOperation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
