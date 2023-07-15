{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.Foundation.GP_Pnt.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeVertex.h BRepBuilderAPI_MakeVertex_Shape"
               c_brepbuilderapi_makevertex_shape ::
               Ptr RawBRepBuilderAPI_MakeVertex -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeVertex.h BRepBuilderAPI_MakeVertex_newBRepBuilderAPI_MakeVertex"
               c_brepbuilderapi_makevertex_newbrepbuilderapi_makevertex ::
               Ptr RawGP_Pnt -> IO (Ptr RawBRepBuilderAPI_MakeVertex)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeVertex.h BRepBuilderAPI_MakeVertex_bRepBuilderAPI_MakeVertex_Vertex"
               c_brepbuilderapi_makevertex_brepbuilderapi_makevertex_vertex ::
               Ptr RawBRepBuilderAPI_MakeVertex -> IO (Ptr RawTopoDS_Vertex)
