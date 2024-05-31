{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeTorus.h BRepPrimAPI_MakeTorus_Shape"
               c_brepprimapi_maketorus_shape ::
               Ptr RawBRepPrimAPI_MakeTorus -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeTorus.h BRepPrimAPI_MakeTorus_newBRepPrimAPI_MakeTorus"
               c_brepprimapi_maketorus_newbrepprimapi_maketorus ::
               CDouble -> CDouble -> IO (Ptr RawBRepPrimAPI_MakeTorus)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeTorus.h BRepPrimAPI_MakeTorus_bRepPrimAPI_MakeTorus_Torus"
               c_brepprimapi_maketorus_brepprimapi_maketorus_torus ::
               Ptr RawBRepPrimAPI_MakeTorus -> IO (Ptr RawBRepPrim_Torus)
