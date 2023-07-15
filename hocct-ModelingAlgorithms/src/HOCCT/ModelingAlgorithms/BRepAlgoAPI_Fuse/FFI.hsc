{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Fuse.h BRepAlgoAPI_Fuse_Build"
               c_brepalgoapi_fuse_build :: Ptr RawBRepAlgoAPI_Fuse -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Fuse.h BRepAlgoAPI_Fuse_Shape"
               c_brepalgoapi_fuse_shape ::
               Ptr RawBRepAlgoAPI_Fuse -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepAlgoAPI_Fuse.h BRepAlgoAPI_Fuse_newBRepAlgoAPI_Fuse"
               c_brepalgoapi_fuse_newbrepalgoapi_fuse ::
               Ptr RawTopoDS_Shape ->
                 Ptr RawTopoDS_Shape -> IO (Ptr RawBRepAlgoAPI_Fuse)
