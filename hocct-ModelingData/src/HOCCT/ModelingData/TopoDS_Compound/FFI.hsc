{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopoDS_Compound.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopoDS_Compound.RawType
import HOCCT.ModelingData.TopoDS_Compound.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Compound.h TopoDS_Compound_newTopoDS_Compound"
               c_topods_compound_newtopods_compound :: IO (Ptr RawTopoDS_Compound)
