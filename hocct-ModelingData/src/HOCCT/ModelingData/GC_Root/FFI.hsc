{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.GC_Root.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.GC_Root.RawType
import HOCCT.ModelingData.GC_Root.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_GC_Root.h GC_Root_gC_Root_IsDone"
               c_gc_root_gc_root_isdone :: Ptr RawGC_Root -> IO CBool
