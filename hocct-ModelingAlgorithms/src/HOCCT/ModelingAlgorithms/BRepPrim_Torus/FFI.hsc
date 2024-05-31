{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Torus.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Torus.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrim_Torus.h BRepPrim_Torus_newBRepPrim_Torus"
               c_brepprim_torus_newbrepprim_torus ::
               CDouble -> CDouble -> IO (Ptr RawBRepPrim_Torus)
