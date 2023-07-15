{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeShape.h BRepBuilderAPI_MakeShape_Shape"
               c_brepbuilderapi_makeshape_shape ::
               Ptr RawBRepBuilderAPI_MakeShape -> IO (Ptr RawTopoDS_Shape)
