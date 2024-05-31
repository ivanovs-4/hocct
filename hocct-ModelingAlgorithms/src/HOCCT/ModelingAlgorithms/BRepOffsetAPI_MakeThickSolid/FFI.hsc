{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.FFI
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepOffsetAPI_MakeThickSolid.h BRepOffsetAPI_MakeThickSolid_Shape"
               c_brepoffsetapi_makethicksolid_shape ::
               Ptr RawBRepOffsetAPI_MakeThickSolid -> IO (Ptr RawTopoDS_Shape)
