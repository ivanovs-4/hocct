{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeWedge.h BRepPrimAPI_MakeWedge_Shape"
               c_brepprimapi_makewedge_shape ::
               Ptr RawBRepPrimAPI_MakeWedge -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeWedge.h BRepPrimAPI_MakeWedge_newBRepPrimAPI_MakeWedge"
               c_brepprimapi_makewedge_newbrepprimapi_makewedge ::
               CDouble ->
                 CDouble -> CDouble -> CDouble -> IO (Ptr RawBRepPrimAPI_MakeWedge)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeWedge.h BRepPrimAPI_MakeWedge_bRepPrimAPI_MakeWedge_Solid"
               c_brepprimapi_makewedge_brepprimapi_makewedge_solid ::
               Ptr RawBRepPrimAPI_MakeWedge -> IO (Ptr RawTopoDS_Solid)
