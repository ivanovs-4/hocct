{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeFace.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Wire.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeFace.h BRepBuilderAPI_MakeFace_Shape"
               c_brepbuilderapi_makeface_shape ::
               Ptr RawBRepBuilderAPI_MakeFace -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeFace.h BRepBuilderAPI_MakeFace_newBRepBuilderAPI_MakeFaceW"
               c_brepbuilderapi_makeface_newbrepbuilderapi_makefacew ::
               Ptr RawTopoDS_Wire -> CBool -> IO (Ptr RawBRepBuilderAPI_MakeFace)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeFace.h BRepBuilderAPI_MakeFace_bRepBuilderAPI_MakeFace_Face"
               c_brepbuilderapi_makeface_brepbuilderapi_makeface_face ::
               Ptr RawBRepBuilderAPI_MakeFace -> IO (Ptr RawTopoDS_Face)
