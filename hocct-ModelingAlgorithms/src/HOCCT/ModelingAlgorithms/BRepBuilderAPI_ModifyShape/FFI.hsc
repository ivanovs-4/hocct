{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.FFI
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_ModifyShape.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_ModifyShape.h BRepBuilderAPI_ModifyShape_Shape"
               c_brepbuilderapi_modifyshape_shape ::
               Ptr RawBRepBuilderAPI_ModifyShape -> IO (Ptr RawTopoDS_Shape)
