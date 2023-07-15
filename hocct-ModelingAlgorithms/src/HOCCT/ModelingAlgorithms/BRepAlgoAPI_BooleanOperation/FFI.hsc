{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.FFI
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BooleanOperation.h BRepAlgoAPI_BooleanOperation_Shape"
               c_brepalgoapi_booleanoperation_shape ::
               Ptr RawBRepAlgoAPI_BooleanOperation -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BooleanOperation.h BRepAlgoAPI_BooleanOperation_Build"
               c_brepalgoapi_booleanoperation_build ::
               Ptr RawBRepAlgoAPI_BooleanOperation -> IO ()
