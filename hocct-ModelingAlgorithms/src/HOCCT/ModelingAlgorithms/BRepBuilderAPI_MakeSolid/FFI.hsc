{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Solid.RawType
import HOCCT.ModelingData.TopoDS_Shell.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeSolid.h BRepBuilderAPI_MakeSolid_Shape"
               c_brepbuilderapi_makesolid_shape ::
               Ptr RawBRepBuilderAPI_MakeSolid -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeSolid.h BRepBuilderAPI_MakeSolid_newBRepBuilderAPI_MakeSolid"
               c_brepbuilderapi_makesolid_newbrepbuilderapi_makesolid ::
               Ptr RawTopoDS_Shell -> IO (Ptr RawBRepBuilderAPI_MakeSolid)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeSolid.h BRepBuilderAPI_MakeSolid_bRepBuilderAPI_MakeSolid_Solid"
               c_brepbuilderapi_makesolid_brepbuilderapi_makesolid_solid ::
               Ptr RawBRepBuilderAPI_MakeSolid -> IO (Ptr RawTopoDS_Solid)
