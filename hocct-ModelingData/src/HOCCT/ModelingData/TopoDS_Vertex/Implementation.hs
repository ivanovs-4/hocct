{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Vertex.Implementation where
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
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.ModelingData.TopoDS_Vertex.FFI
import HOCCT.ModelingData.TopoDS_Vertex.Interface
import HOCCT.ModelingData.TopoDS_Vertex.Cast
import HOCCT.ModelingData.TopoDS_Vertex.RawType
import HOCCT.ModelingData.TopoDS_Vertex.Cast
import HOCCT.ModelingData.TopoDS_Vertex.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopoDS_Vertex (TopoDS_Vertex) where

instance () => ITopoDS_Shape (TopoDS_Vertex) where
