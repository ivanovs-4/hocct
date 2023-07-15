{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.Interface

instance (IBRepAlgoAPI_Fuse a, FPtr a) =>
         Castable (a) (Ptr RawBRepAlgoAPI_Fuse)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (BRepAlgoAPI_Fuse) (Ptr RawBRepAlgoAPI_Fuse)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
