{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Implementation
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
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.FFI
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () =>
         IBRepFilletAPI_LocalOperation (BRepFilletAPI_LocalOperation)
         where

instance () =>
         IBRepBuilderAPI_MakeShape (BRepFilletAPI_LocalOperation)
         where
        shape = xform0 c_brepfilletapi_localoperation_shape

instance () =>
         IBRepBuilderAPI_Command (BRepFilletAPI_LocalOperation)
         where
