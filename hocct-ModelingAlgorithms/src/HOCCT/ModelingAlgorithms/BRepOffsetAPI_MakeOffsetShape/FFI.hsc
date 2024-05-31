{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.FFI
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepOffsetAPI_MakeOffsetShape.h BRepOffsetAPI_MakeOffsetShape_Shape"
               c_brepoffsetapi_makeoffsetshape_shape ::
               Ptr RawBRepOffsetAPI_MakeOffsetShape -> IO (Ptr RawTopoDS_Shape)
