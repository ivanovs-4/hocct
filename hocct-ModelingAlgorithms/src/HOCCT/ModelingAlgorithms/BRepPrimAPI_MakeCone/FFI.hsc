{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCone.h BRepPrimAPI_MakeCone_Shape"
               c_brepprimapi_makecone_shape ::
               Ptr RawBRepPrimAPI_MakeCone -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCone.h BRepPrimAPI_MakeCone_newBRepPrimAPI_MakeCone"
               c_brepprimapi_makecone_newbrepprimapi_makecone ::
               CDouble -> CDouble -> CDouble -> IO (Ptr RawBRepPrimAPI_MakeCone)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepPrimAPI_MakeCone.h BRepPrimAPI_MakeCone_bRepPrimAPI_MakeCone_Cone"
               c_brepprimapi_makecone_brepprimapi_makecone_cone ::
               Ptr RawBRepPrimAPI_MakeCone -> IO (Ptr RawBRepPrim_Cone)
