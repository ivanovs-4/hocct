{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_BuilderAlgo.h BRepAlgoAPI_BuilderAlgo_Shape"
               c_brepalgoapi_builderalgo_shape ::
               Ptr RawBRepAlgoAPI_BuilderAlgo -> IO (Ptr RawTopoDS_Shape)
