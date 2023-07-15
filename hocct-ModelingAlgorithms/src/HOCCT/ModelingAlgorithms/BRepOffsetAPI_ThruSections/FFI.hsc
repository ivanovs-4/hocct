{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.FFI
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Vertex.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepOffsetAPI_ThruSections.h BRepOffsetAPI_ThruSections_Shape"
               c_brepoffsetapi_thrusections_shape ::
               Ptr RawBRepOffsetAPI_ThruSections -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepOffsetAPI_ThruSections.h BRepOffsetAPI_ThruSections_newBRepOffsetAPI_ThruSections"
               c_brepoffsetapi_thrusections_newbrepoffsetapi_thrusections ::
               CBool -> CBool -> IO (Ptr RawBRepOffsetAPI_ThruSections)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepOffsetAPI_ThruSections.h BRepOffsetAPI_ThruSections_bRepOffsetAPI_ThruSections_AddWire"
               c_brepoffsetapi_thrusections_brepoffsetapi_thrusections_addwire ::
               Ptr RawBRepOffsetAPI_ThruSections -> Ptr RawTopoDS_Wire -> IO ()

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepOffsetAPI_ThruSections.h BRepOffsetAPI_ThruSections_bRepOffsetAPI_ThruSections_AddVertex"
               c_brepoffsetapi_thrusections_brepoffsetapi_thrusections_addvertex
               ::
               Ptr RawBRepOffsetAPI_ThruSections -> Ptr RawTopoDS_Vertex -> IO ()
