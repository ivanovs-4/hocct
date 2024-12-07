{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopoDS_Wire.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Wire.h TopoDS_Wire_newTopoDS_Wire"
               c_topods_wire_newtopods_wire :: IO (Ptr RawTopoDS_Wire)
