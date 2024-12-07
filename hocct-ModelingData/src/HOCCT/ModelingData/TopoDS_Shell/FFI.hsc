{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopoDS_Shell.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Shell.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Shell.h TopoDS_Shell_newTopoDS_Shell"
               c_topods_shell_newtopods_shell :: IO (Ptr RawTopoDS_Shell)
