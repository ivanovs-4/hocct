{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Sphere.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Sphere.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrim_Sphere.h BRepPrim_Sphere_newBRepPrim_Sphere"
               c_brepprim_sphere_newbrepprim_sphere ::
               CDouble -> IO (Ptr RawBRepPrim_Sphere)
