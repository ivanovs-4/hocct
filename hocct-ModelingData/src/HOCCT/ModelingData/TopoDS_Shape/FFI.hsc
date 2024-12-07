{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingData.TopoDS_Shape.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingData_TopoDS_Shape.h TopoDS_Shape_topoDS_Shape_Reverse"
               c_topods_shape_topods_shape_reverse :: Ptr RawTopoDS_Shape -> IO ()
