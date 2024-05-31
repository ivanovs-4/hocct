{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h BRepPrimAPI_MakeOneAxis_Shape"
               c_brepprimapi_makeoneaxis_shape ::
               Ptr RawBRepPrimAPI_MakeOneAxis -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeOneAxis.h BRepPrimAPI_MakeOneAxis_bRepPrimAPI_MakeOneAxis_Solid"
               c_brepprimapi_makeoneaxis_brepprimapi_makeoneaxis_solid ::
               Ptr RawBRepPrimAPI_MakeOneAxis -> IO (Ptr RawTopoDS_Solid)
