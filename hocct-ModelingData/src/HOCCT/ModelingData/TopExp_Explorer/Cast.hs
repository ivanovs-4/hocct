{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.TopExp_Explorer.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.TopExp_Explorer.RawType
import HOCCT.ModelingData.TopExp_Explorer.Interface

instance (ITopExp_Explorer a, FPtr a) =>
         Castable (a) (Ptr RawTopExp_Explorer)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () => Castable (TopExp_Explorer) (Ptr RawTopExp_Explorer)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
