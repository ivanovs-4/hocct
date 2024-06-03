{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopExp_Explorer.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopExp_Explorer.RawType
import HOCCT.ModelingData.TopExp_Explorer.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopExp_Explorer.h TopExp_Explorer_newTopExp_Explorer"
               c_topexp_explorer_newtopexp_explorer ::
               Ptr RawTopoDS_Shape ->
                 Word8 -> Word8 -> IO (Ptr RawTopExp_Explorer)

foreign import ccall interruptible
               "HOCCT_ModelingData_TopExp_Explorer.h TopExp_Explorer_topExp_Explorer_More"
               c_topexp_explorer_topexp_explorer_more ::
               Ptr RawTopExp_Explorer -> IO CBool

foreign import ccall interruptible
               "HOCCT_ModelingData_TopExp_Explorer.h TopExp_Explorer_topExp_Explorer_Next"
               c_topexp_explorer_topexp_explorer_next ::
               Ptr RawTopExp_Explorer -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingData_TopExp_Explorer.h TopExp_Explorer_topExp_Explorer_Current"
               c_topexp_explorer_topexp_explorer_current ::
               Ptr RawTopExp_Explorer -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingData_TopExp_Explorer.h TopExp_Explorer_topExp_Explorer_Value"
               c_topexp_explorer_topexp_explorer_value ::
               Ptr RawTopExp_Explorer -> IO (Ptr RawTopoDS_Shape)
