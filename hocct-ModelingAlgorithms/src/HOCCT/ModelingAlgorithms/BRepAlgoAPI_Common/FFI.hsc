{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Common.h BRepAlgoAPI_Common_Build"
               c_brepalgoapi_common_build :: Ptr RawBRepAlgoAPI_Common -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Common.h BRepAlgoAPI_Common_Shape"
               c_brepalgoapi_common_shape ::
               Ptr RawBRepAlgoAPI_Common -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Common.h BRepAlgoAPI_Common_newBRepAlgoAPI_Common"
               c_brepalgoapi_common_newbrepalgoapi_common ::
               Ptr RawTopoDS_Shape ->
                 Ptr RawTopoDS_Shape -> IO (Ptr RawBRepAlgoAPI_Common)
