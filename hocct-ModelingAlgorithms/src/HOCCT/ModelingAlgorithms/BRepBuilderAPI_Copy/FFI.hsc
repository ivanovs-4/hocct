{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Copy.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Copy.h BRepBuilderAPI_Copy_Shape"
               c_brepbuilderapi_copy_shape ::
               Ptr RawBRepBuilderAPI_Copy -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Copy.h BRepBuilderAPI_Copy_newBRepBuilderAPI_Copy"
               c_brepbuilderapi_copy_newbrepbuilderapi_copy ::
               IO (Ptr RawBRepBuilderAPI_Copy)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Copy.h BRepBuilderAPI_Copy_newBRepBuilderAPI_Copy_Shape"
               c_brepbuilderapi_copy_newbrepbuilderapi_copy_shape ::
               Ptr RawTopoDS_Shape ->
                 CBool -> CBool -> IO (Ptr RawBRepBuilderAPI_Copy)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Copy.h BRepBuilderAPI_Copy_bRepBuilderAPI_Copy_Perform"
               c_brepbuilderapi_copy_brepbuilderapi_copy_perform ::
               Ptr RawBRepBuilderAPI_Copy -> Ptr RawTopoDS_Shape -> IO ()
