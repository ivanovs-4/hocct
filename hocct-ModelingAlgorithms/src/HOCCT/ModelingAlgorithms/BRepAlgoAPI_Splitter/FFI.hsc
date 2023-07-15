{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Splitter.h BRepAlgoAPI_Splitter_Shape"
               c_brepalgoapi_splitter_shape ::
               Ptr RawBRepAlgoAPI_Splitter -> IO (Ptr RawTopoDS_Shape)
