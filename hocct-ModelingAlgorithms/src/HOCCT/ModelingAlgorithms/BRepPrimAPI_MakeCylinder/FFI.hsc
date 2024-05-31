{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCylinder.h BRepPrimAPI_MakeCylinder_Shape"
               c_brepprimapi_makecylinder_shape ::
               Ptr RawBRepPrimAPI_MakeCylinder -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCylinder.h BRepPrimAPI_MakeCylinder_newBRepPrimAPI_MakeCylinder"
               c_brepprimapi_makecylinder_newbrepprimapi_makecylinder ::
               CDouble -> CDouble -> IO (Ptr RawBRepPrimAPI_MakeCylinder)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCylinder.h BRepPrimAPI_MakeCylinder_bRepPrimAPI_MakeCylinder_Cylinder"
               c_brepprimapi_makecylinder_brepprimapi_makecylinder_cylinder ::
               Ptr RawBRepPrimAPI_MakeCylinder -> IO (Ptr RawBRepPrim_Cylinder)
