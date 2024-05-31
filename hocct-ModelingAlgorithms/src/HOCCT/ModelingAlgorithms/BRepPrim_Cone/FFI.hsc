{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cone.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrim_Cone.h BRepPrim_Cone_newBRepPrim_Cone"
               c_brepprim_cone_newbrepprim_cone ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawBRepPrim_Cone)
