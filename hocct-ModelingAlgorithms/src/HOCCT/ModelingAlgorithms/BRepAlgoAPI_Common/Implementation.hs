{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Implementation
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
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.FFI
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Interface
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Cast
import HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.Interface
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

instance () => IBRepAlgoAPI_Common (BRepAlgoAPI_Common) where

instance () => IBRepAlgoAPI_BooleanOperation (BRepAlgoAPI_Common)
         where
        build = xform0 c_brepalgoapi_common_build

instance () => IBRepAlgoAPI_BuilderAlgo (BRepAlgoAPI_Common) where

instance () => IBRepAlgoAPI_Algo (BRepAlgoAPI_Common) where

instance () => IBRepBuilderAPI_MakeShape (BRepAlgoAPI_Common) where
        shape = xform0 c_brepalgoapi_common_shape

instance () => IBRepBuilderAPI_Command (BRepAlgoAPI_Common) where

newBRepAlgoAPI_Common ::
                        (ITopoDS_Shape c1, FPtr c1, ITopoDS_Shape c0, FPtr c0) =>
                        c0 -> c1 -> IO BRepAlgoAPI_Common
newBRepAlgoAPI_Common
  = xform1 c_brepalgoapi_common_newbrepalgoapi_common
