{-# LANGUAGE ForeignFunctionInterface, InterruptibleFFI #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.FFI where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.Foundation.Standard_Handle.Template
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.ModelingData.TopoDS_Vertex.RawType

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeEdge.h BRepBuilderAPI_MakeEdge_Shape"
               c_brepbuilderapi_makeedge_shape ::
               Ptr RawBRepBuilderAPI_MakeEdge -> IO (Ptr RawTopoDS_Shape)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeEdge.h BRepBuilderAPI_MakeEdge_newBRepBuilderAPI_MakeEdge_L"
               c_brepbuilderapi_makeedge_newbrepbuilderapi_makeedge_l ::
               Ptr (RawStandard_Handle Geom_Curve) ->
                 IO (Ptr RawBRepBuilderAPI_MakeEdge)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeEdge.h BRepBuilderAPI_MakeEdge_newBRepBuilderAPI_MakeEdge_P1_P2"
               c_brepbuilderapi_makeedge_newbrepbuilderapi_makeedge_p1_p2 ::
               Ptr RawGP_Pnt ->
                 Ptr RawGP_Pnt -> IO (Ptr RawBRepBuilderAPI_MakeEdge)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeEdge.h BRepBuilderAPI_MakeEdge_newBRepBuilderAPI_MakeEdge_V1_V2"
               c_brepbuilderapi_makeedge_newbrepbuilderapi_makeedge_v1_v2 ::
               Ptr RawTopoDS_Vertex ->
                 Ptr RawTopoDS_Vertex -> IO (Ptr RawBRepBuilderAPI_MakeEdge)

foreign import ccall interruptible
               "HOCCT_ModelingAlgorithms_BRepBuilderAPI_MakeEdge.h BRepBuilderAPI_MakeEdge_bRepBuilderAPI_MakeEdge_Edge"
               c_brepbuilderapi_makeedge_brepbuilderapi_makeedge_edge ::
               Ptr RawBRepBuilderAPI_MakeEdge -> IO (Ptr RawTopoDS_Edge)
