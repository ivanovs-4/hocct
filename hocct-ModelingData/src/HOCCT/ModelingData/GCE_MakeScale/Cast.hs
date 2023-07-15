{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.GCE_MakeScale.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.GCE_MakeScale.RawType
import HOCCT.ModelingData.GCE_MakeScale.Interface

instance (IGCE_MakeScale a, FPtr a) =>
         Castable (a) (Ptr RawGCE_MakeScale)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (GCE_MakeScale) (Ptr RawGCE_MakeScale)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
