{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeBox.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shell.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeBox.h BRepPrimAPI_MakeBox_Shape"
               c_brepprimapi_makebox_shape ::
               Ptr RawBRepPrimAPI_MakeBox -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeBox.h BRepPrimAPI_MakeBox_newBRepPrimAPI_MakeBox"
               c_brepprimapi_makebox_newbrepprimapi_makebox ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawBRepPrimAPI_MakeBox)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeBox.h BRepPrimAPI_MakeBox_bRepPrimAPI_MakeBox_Shell"
               c_brepprimapi_makebox_brepprimapi_makebox_shell ::
               Ptr RawBRepPrimAPI_MakeBox -> IO (Ptr RawTopoDS_Shell)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeBox.h BRepPrimAPI_MakeBox_bRepPrimAPI_MakeBox_Solid"
               c_brepprimapi_makebox_brepprimapi_makebox_solid ::
               Ptr RawBRepPrimAPI_MakeBox -> IO (Ptr RawTopoDS_Solid)
