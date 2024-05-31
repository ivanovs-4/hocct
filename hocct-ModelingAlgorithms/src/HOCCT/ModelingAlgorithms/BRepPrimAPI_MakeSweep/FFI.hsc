{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeSweep.h BRepPrimAPI_MakeSweep_Shape"
               c_brepprimapi_makesweep_shape ::
               Ptr RawBRepPrimAPI_MakeSweep -> IO (Ptr RawTopoDS_Shape)
