{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Interface

instance (IBRepAlgoAPI_Cut a, FPtr a) =>
         Castable (a) (Ptr RawBRepAlgoAPI_Cut)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (BRepAlgoAPI_Cut) (Ptr RawBRepAlgoAPI_Cut)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
