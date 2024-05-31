{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cylinder.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrim_Cylinder.h BRepPrim_Cylinder_newBRepPrim_Cylinder"
               c_brepprim_cylinder_newbrepprim_cylinder ::
               CDouble -> CDouble -> IO (Ptr RawBRepPrim_Cylinder)
