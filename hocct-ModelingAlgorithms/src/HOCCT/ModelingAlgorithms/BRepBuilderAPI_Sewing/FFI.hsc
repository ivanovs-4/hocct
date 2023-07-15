{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Sewing.h BRepBuilderAPI_Sewing_newBRepBuilderAPI_Sewing"
               c_brepbuilderapi_sewing_newbrepbuilderapi_sewing ::
               IO (Ptr RawBRepBuilderAPI_Sewing)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Sewing.h BRepBuilderAPI_Sewing_newBRepBuilderAPI_Sewing_"
               c_brepbuilderapi_sewing_newbrepbuilderapi_sewing_ ::
               CDouble ->
                 CBool ->
                   CBool -> CBool -> CBool -> IO (Ptr RawBRepBuilderAPI_Sewing)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Sewing.h BRepBuilderAPI_Sewing_bRepBuilderAPI_Sewing_Add"
               c_brepbuilderapi_sewing_brepbuilderapi_sewing_add ::
               Ptr RawBRepBuilderAPI_Sewing -> Ptr RawTopoDS_Shape -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Sewing.h BRepBuilderAPI_Sewing_bRepBuilderAPI_Sewing_SewedShape"
               c_brepbuilderapi_sewing_brepbuilderapi_sewing_sewedshape ::
               Ptr RawBRepBuilderAPI_Sewing -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_Sewing.h BRepBuilderAPI_Sewing_bRepBuilderAPI_Sewing_Perform"
               c_brepbuilderapi_sewing_brepbuilderapi_sewing_perform ::
               Ptr RawBRepBuilderAPI_Sewing -> IO ()
