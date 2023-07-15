{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_Face.Implementation where
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
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Face.FFI
import HOCCT.ModelingData.TopoDS_Face.Interface
import HOCCT.ModelingData.TopoDS_Face.Cast
import HOCCT.ModelingData.TopoDS_Face.RawType
import HOCCT.ModelingData.TopoDS_Face.Cast
import HOCCT.ModelingData.TopoDS_Face.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopoDS_Face (TopoDS_Face) where

instance () => ITopoDS_Shape (TopoDS_Face) where
