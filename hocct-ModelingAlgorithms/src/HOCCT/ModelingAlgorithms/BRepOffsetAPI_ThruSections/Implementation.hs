{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Implementation
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
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.FFI
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Interface
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingData.TopoDS_Wire.RawType
import HOCCT.ModelingData.TopoDS_Wire.Cast
import HOCCT.ModelingData.TopoDS_Wire.Interface
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.ModelingData.TopoDS_Vertex.Cast
import HOCCT.ModelingData.TopoDS_Vertex.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () =>
         IBRepOffsetAPI_ThruSections (BRepOffsetAPI_ThruSections)
         where

instance () =>
         IBRepBuilderAPI_MakeShape (BRepOffsetAPI_ThruSections)
         where
        shape = xform0 c_brepoffsetapi_thrusections_shape

instance () => IBRepBuilderAPI_Command (BRepOffsetAPI_ThruSections)
         where

newBRepOffsetAPI_ThruSections ::
                                () => CBool -> CBool -> IO BRepOffsetAPI_ThruSections
newBRepOffsetAPI_ThruSections
  = xform1 c_brepoffsetapi_thrusections_newbrepoffsetapi_thrusections

bRepOffsetAPI_ThruSections_AddWire ::
                                     (ITopoDS_Wire c0, FPtr c0) =>
                                     BRepOffsetAPI_ThruSections -> c0 -> IO ()
bRepOffsetAPI_ThruSections_AddWire
  = xform1
      c_brepoffsetapi_thrusections_brepoffsetapi_thrusections_addwire

bRepOffsetAPI_ThruSections_AddVertex ::
                                       (ITopoDS_Vertex c0, FPtr c0) =>
                                       BRepOffsetAPI_ThruSections -> c0 -> IO ()
bRepOffsetAPI_ThruSections_AddVertex
  = xform1
      c_brepoffsetapi_thrusections_brepoffsetapi_thrusections_addvertex
