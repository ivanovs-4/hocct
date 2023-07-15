{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.GCE_MakeRotation.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.GCE_MakeRotation.RawType
import HOCCT.ModelingData.GCE_MakeRotation.Interface

instance (IGCE_MakeRotation a, FPtr a) =>
         Castable (a) (Ptr RawGCE_MakeRotation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (GCE_MakeRotation) (Ptr RawGCE_MakeRotation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
