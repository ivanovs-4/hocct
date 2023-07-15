{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.Foundation.Standard_Transient.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.Foundation.Standard_Transient.RawType
import HOCCT.Foundation.Standard_Transient.Interface

instance (IStandard_Transient a, FPtr a) =>
         Castable (a) (Ptr RawStandard_Transient)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Standard_Transient) (Ptr RawStandard_Transient)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
