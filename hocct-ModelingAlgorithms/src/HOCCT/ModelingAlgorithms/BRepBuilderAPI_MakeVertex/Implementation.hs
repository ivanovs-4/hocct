{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Implementation
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
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.FFI
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeVertex.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.ModelingData.TopoDS_Vertex.Cast
import HOCCT.ModelingData.TopoDS_Vertex.Interface
import HOCCT.Foundation.GP_Pnt.RawType
import HOCCT.Foundation.GP_Pnt.Cast
import HOCCT.Foundation.GP_Pnt.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () =>
         IBRepBuilderAPI_MakeVertex (BRepBuilderAPI_MakeVertex)
         where

instance () =>
         IBRepBuilderAPI_MakeShape (BRepBuilderAPI_MakeVertex)
         where
        shape = xform0 c_brepbuilderapi_makevertex_shape

instance () => IBRepBuilderAPI_Command (BRepBuilderAPI_MakeVertex)
         where

newBRepBuilderAPI_MakeVertex ::
                               (IGP_Pnt c0, FPtr c0) => c0 -> IO BRepBuilderAPI_MakeVertex
newBRepBuilderAPI_MakeVertex
  = xform0 c_brepbuilderapi_makevertex_newbrepbuilderapi_makevertex

bRepBuilderAPI_MakeVertex_Vertex ::
                                   () => BRepBuilderAPI_MakeVertex -> IO TopoDS_Vertex
bRepBuilderAPI_MakeVertex_Vertex
  = xform0
      c_brepbuilderapi_makevertex_brepbuilderapi_makevertex_vertex
