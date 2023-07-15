{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Copy.h BRepBuilderAPI_Copy_Shape"
               c_brepbuilderapi_copy_shape ::
               Ptr RawBRepBuilderAPI_Copy -> IO (Ptr RawTopoDS_Shape)
