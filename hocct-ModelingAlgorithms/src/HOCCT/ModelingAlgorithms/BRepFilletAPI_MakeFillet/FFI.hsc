{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Edge.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeFillet.h BRepFilletAPI_MakeFillet_Shape"
               c_brepfilletapi_makefillet_shape ::
               Ptr RawBRepFilletAPI_MakeFillet -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeFillet.h BRepFilletAPI_MakeFillet_newBRepFilletAPI_MakeFillet"
               c_brepfilletapi_makefillet_newbrepfilletapi_makefillet ::
               Ptr RawTopoDS_Shape ->
                 Word8 -> IO (Ptr RawBRepFilletAPI_MakeFillet)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeFillet.h BRepFilletAPI_MakeFillet_bRepFilletAPI_MakeFillet_Add_R1R2_E"
               c_brepfilletapi_makefillet_brepfilletapi_makefillet_add_r1r2_e ::
               Ptr RawBRepFilletAPI_MakeFillet ->
                 CDouble -> CDouble -> Ptr RawTopoDS_Edge -> IO ()
