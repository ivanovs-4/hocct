{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies,
  MultiParamTypeClasses, OverlappingInstances, IncoherentInstances
  #-}
module HOCCT.ModelingData.Message_ProgressRange.Cast where
import Foreign.Ptr
import FFICXX.Runtime.Cast
import System.IO.Unsafe
import HOCCT.ModelingData.Message_ProgressRange.RawType
import HOCCT.ModelingData.Message_ProgressRange.Interface

instance (IMessage_ProgressRange a, FPtr a) =>
         Castable (a) (Ptr RawMessage_ProgressRange)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))

instance () =>
         Castable (Message_ProgressRange) (Ptr RawMessage_ProgressRange)
         where
        cast x f = f (castPtr (get_fptr x))
        uncast x f = f (cast_fptr_to_obj (castPtr x))
