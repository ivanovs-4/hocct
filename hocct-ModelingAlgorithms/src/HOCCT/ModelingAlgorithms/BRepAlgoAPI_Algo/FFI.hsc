{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Algo.h BRepAlgoAPI_Algo_Shape"
               c_brepalgoapi_algo_shape ::
               Ptr RawBRepAlgoAPI_Algo -> IO (Ptr RawTopoDS_Shape)
