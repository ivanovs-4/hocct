{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeSphere.h BRepPrimAPI_MakeSphere_Shape"
               c_brepprimapi_makesphere_shape ::
               Ptr RawBRepPrimAPI_MakeSphere -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeSphere.h BRepPrimAPI_MakeSphere_newBRepPrimAPI_MakeSphere"
               c_brepprimapi_makesphere_newbrepprimapi_makesphere ::
               CDouble -> IO (Ptr RawBRepPrimAPI_MakeSphere)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeSphere.h BRepPrimAPI_MakeSphere_bRepPrimAPI_MakeSphere_Sphere"
               c_brepprimapi_makesphere_brepprimapi_makesphere_sphere ::
               Ptr RawBRepPrimAPI_MakeSphere -> IO (Ptr RawBRepPrim_Sphere)
