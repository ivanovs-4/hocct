{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Implementation
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
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.FFI
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepAlgoAPI_Cut (BRepAlgoAPI_Cut) where

instance () => IBRepAlgoAPI_BooleanOperation (BRepAlgoAPI_Cut)
         where
        build = xform0 c_brepalgoapi_cut_build

instance () => IBRepAlgoAPI_BuilderAlgo (BRepAlgoAPI_Cut) where

instance () => IBRepAlgoAPI_Algo (BRepAlgoAPI_Cut) where

instance () => IBRepBuilderAPI_MakeShape (BRepAlgoAPI_Cut) where
        shape = xform0 c_brepalgoapi_cut_shape

instance () => IBRepBuilderAPI_Command (BRepAlgoAPI_Cut) where

newBRepAlgoAPI_Cut ::
                     (ITopoDS_Shape c1, FPtr c1, ITopoDS_Shape c0, FPtr c0) =>
                     c0 -> c1 -> IO BRepAlgoAPI_Cut
newBRepAlgoAPI_Cut = xform1 c_brepalgoapi_cut_newbrepalgoapi_cut
