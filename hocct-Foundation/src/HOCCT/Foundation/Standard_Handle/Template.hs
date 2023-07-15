{-# LANGUAGE EmptyDataDecls, FlexibleInstances,
  MultiParamTypeClasses, TypeFamilies #-}
module HOCCT.Foundation.Standard_Handle.Template where
import Foreign.C.Types
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawStandard_Handle t

newtype Standard_Handle t = Standard_Handle (Ptr
                                               (RawStandard_Handle t))

class () => IStandard_Handle t where

instance () => FPtr (Standard_Handle t) where
        type Raw (Standard_Handle t) = RawStandard_Handle t
        get_fptr (Standard_Handle ptr) = ptr
        cast_fptr_to_obj = Standard_Handle

instance () =>
         Castable (Standard_Handle t) (Ptr (RawStandard_Handle t))
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
