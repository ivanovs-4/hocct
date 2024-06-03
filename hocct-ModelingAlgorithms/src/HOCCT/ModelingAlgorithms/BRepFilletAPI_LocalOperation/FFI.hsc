{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.FFI
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_LocalOperation.h BRepFilletAPI_LocalOperation_Shape"
               c_brepfilletapi_localoperation_shape ::
               Ptr RawBRepFilletAPI_LocalOperation -> IO (Ptr RawTopoDS_Shape)
