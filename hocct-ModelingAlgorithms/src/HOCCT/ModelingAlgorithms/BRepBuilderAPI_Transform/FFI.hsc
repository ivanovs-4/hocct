{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Transform.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.Foundation.GP_Trsf.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Transform.h BRepBuilderAPI_Transform_Shape"
               c_brepbuilderapi_transform_shape ::
               Ptr RawBRepBuilderAPI_Transform -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Transform.h BRepBuilderAPI_Transform_newBRepBuilderAPI_Transform"
               c_brepbuilderapi_transform_newbrepbuilderapi_transform ::
               Ptr RawGP_Trsf -> IO (Ptr RawBRepBuilderAPI_Transform)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Transform.h BRepBuilderAPI_Transform_newBRepBuilderAPI_Transform_FromShape"
               c_brepbuilderapi_transform_newbrepbuilderapi_transform_fromshape ::
               Ptr RawTopoDS_Shape ->
                 Ptr RawGP_Trsf -> CBool -> IO (Ptr RawBRepBuilderAPI_Transform)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Transform.h BRepBuilderAPI_Transform_bRepBuilderAPI_Transform_Perform"
               c_brepbuilderapi_transform_brepbuilderapi_transform_perform ::
               Ptr RawBRepBuilderAPI_Transform ->
                 Ptr RawTopoDS_Shape -> CBool -> IO ()
