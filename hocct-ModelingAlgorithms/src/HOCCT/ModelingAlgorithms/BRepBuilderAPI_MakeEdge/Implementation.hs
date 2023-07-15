{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Implementation
       where
import Data.Monoid
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import System.IO.Unsafe
import FFICXX.Runtime.Cast
import FFICXX.Runtime.CodeGen.Cxx
import FFICXX.Runtime.TH
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeEdge.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Edge.RawType
import HOCCT.ModelingData.TopoDS_Edge.Cast
import HOCCT.ModelingData.TopoDS_Edge.Interface
import HOCCT.Foundation.Standard_Handle.Template
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.ModelingData.Geom_Curve.Cast
import HOCCT.ModelingData.Geom_Curve.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.ModelingData.TopoDS_Vertex.Cast
import HOCCT.ModelingData.TopoDS_Vertex.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepBuilderAPI_MakeEdge (BRepBuilderAPI_MakeEdge)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepBuilderAPI_MakeEdge)
         where
        shape = xform0 c_brepbuilderapi_makeedge_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_MakeEdge)
         where

newBRepBuilderAPI_MakeEdge_L ::
                               () => Standard_Handle Geom_Curve -> IO BRepBuilderAPI_MakeEdge
newBRepBuilderAPI_MakeEdge_L
  = xform0 c_brepbuilderapi_makeedge_newbrepbuilderapi_makeedge_l

newBRepBuilderAPI_MakeEdge_P1_P2 ::
                                   (IGP_Pnt c1, FPtr c1, IGP_Pnt c0, FPtr c0) =>
                                   c0 -> c1 -> IO BRepBuilderAPI_MakeEdge
newBRepBuilderAPI_MakeEdge_P1_P2
  = xform1 c_brepbuilderapi_makeedge_newbrepbuilderapi_makeedge_p1_p2

newBRepBuilderAPI_MakeEdge_V1_V2 ::
                                   (ITopoDS_Vertex c1, FPtr c1, ITopoDS_Vertex c0, FPtr c0) =>
                                   c0 -> c1 -> IO BRepBuilderAPI_MakeEdge
newBRepBuilderAPI_MakeEdge_V1_V2
  = xform1 c_brepbuilderapi_makeedge_newbrepbuilderapi_makeedge_v1_v2

bRepBuilderAPI_MakeEdge_Edge ::
                               () => BRepBuilderAPI_MakeEdge -> IO TopoDS_Edge
bRepBuilderAPI_MakeEdge_Edge
  = xform0 c_brepbuilderapi_makeedge_brepbuilderapi_makeedge_edge
