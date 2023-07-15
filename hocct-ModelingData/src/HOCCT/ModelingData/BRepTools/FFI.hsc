{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.BRepTools.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.BRepTools.RawType
import HOCCT.ModelingData.BRepTools.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.Message_ProgressRange.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_BRepTools.h BRepTools_bRepTools_Write"
               c_breptools_breptools_write ::
               Ptr RawTopoDS_Shape ->
                 CString -> Ptr RawMessage_ProgressRange -> IO CBool
