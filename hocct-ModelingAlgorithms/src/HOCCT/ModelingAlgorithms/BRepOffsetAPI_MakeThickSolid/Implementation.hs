{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Implementation
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
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.FFI
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Interface
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.RawType
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.Cast
import HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeOffsetShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () =>
         IBRepOffsetAPI_MakeThickSolid (BRepOffsetAPI_MakeThickSolid)
         where

instance () =>
         IBRepOffsetAPI_MakeOffsetShape (BRepOffsetAPI_MakeThickSolid)
         where

instance () =>
         IBRepBuilderAPI_MakeShape (BRepOffsetAPI_MakeThickSolid)
         where
        shape = xform0 c_brepoffsetapi_makethicksolid_shape

instance () =>
         IBRepBuilderAPI_Command (BRepOffsetAPI_MakeThickSolid)
         where
