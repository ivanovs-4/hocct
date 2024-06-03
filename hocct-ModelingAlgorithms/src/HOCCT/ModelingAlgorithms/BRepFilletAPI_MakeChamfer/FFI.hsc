{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Edge.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeChamfer.h BRepFilletAPI_MakeChamfer_Shape"
               c_brepfilletapi_makechamfer_shape ::
               Ptr RawBRepFilletAPI_MakeChamfer -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeChamfer.h BRepFilletAPI_MakeChamfer_newBRepFilletAPI_MakeChamfer"
               c_brepfilletapi_makechamfer_newbrepfilletapi_makechamfer ::
               Ptr RawTopoDS_Shape -> IO (Ptr RawBRepFilletAPI_MakeChamfer)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepFilletAPI_MakeChamfer.h BRepFilletAPI_MakeChamfer_bRepFilletAPI_MakeChamfer_Add_Dis_E"
               c_brepfilletapi_makechamfer_brepfilletapi_makechamfer_add_dis_e ::
               Ptr RawBRepFilletAPI_MakeChamfer ->
                 CDouble -> Ptr RawTopoDS_Edge -> IO ()
