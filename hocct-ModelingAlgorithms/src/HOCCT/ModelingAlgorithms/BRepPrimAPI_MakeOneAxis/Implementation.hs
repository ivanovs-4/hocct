{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Implementation
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
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.FFI
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepPrimAPI_MakeOneAxis (BRepPrimAPI_MakeOneAxis)
         where

instance () => IBRepBuilderAPI_MakeShape (BRepPrimAPI_MakeOneAxis)
         where
        shape = xform0 c_brepprimapi_makeoneaxis_shape

instance () => IBRepBuilderAPI_Command (BRepPrimAPI_MakeOneAxis)
         where
