{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Cut.h BRepAlgoAPI_Cut_Build"
               c_brepalgoapi_cut_build :: Ptr RawBRepAlgoAPI_Cut -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Cut.h BRepAlgoAPI_Cut_Shape"
               c_brepalgoapi_cut_shape ::
               Ptr RawBRepAlgoAPI_Cut -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Cut.h BRepAlgoAPI_Cut_newBRepAlgoAPI_Cut"
               c_brepalgoapi_cut_newbrepalgoapi_cut ::
               Ptr RawTopoDS_Shape ->
                 Ptr RawTopoDS_Shape -> IO (Ptr RawBRepAlgoAPI_Cut)
