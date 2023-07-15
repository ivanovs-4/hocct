{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.GCE_MakeTranslation.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.GCE_MakeTranslation.RawType
import HOCCT.ModelingData.GCE_MakeTranslation.Interface

instance (IGCE_MakeTranslation a, FPtr a) =>
         Castable (a) (Ptr RawGCE_MakeTranslation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (GCE_MakeTranslation) (Ptr RawGCE_MakeTranslation)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
