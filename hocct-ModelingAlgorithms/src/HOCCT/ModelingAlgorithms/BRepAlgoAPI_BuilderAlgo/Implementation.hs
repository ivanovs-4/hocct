{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Implementation
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
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.FFI
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_BuilderAlgo.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Algo.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface

instance () => IBRepAlgoAPI_BuilderAlgo (BRepAlgoAPI_BuilderAlgo)
         where

instance () => IBRepAlgoAPI_Algo (BRepAlgoAPI_BuilderAlgo) where

instance () => IBRepBuilderAPI_MakeShape (BRepAlgoAPI_BuilderAlgo)
         where
        shape = xform0 c_brepalgoapi_builderalgo_shape

instance () => IBRepBuilderAPI_Command (BRepAlgoAPI_BuilderAlgo)
         where
