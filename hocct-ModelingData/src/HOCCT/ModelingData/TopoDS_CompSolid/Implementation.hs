{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.TopoDS_CompSolid.Implementation where
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
import HOCCT.ModelingData.TopoDS_CompSolid.RawType
import HOCCT.ModelingData.TopoDS_CompSolid.FFI
import HOCCT.ModelingData.TopoDS_CompSolid.Interface
import HOCCT.ModelingData.TopoDS_CompSolid.Cast
import HOCCT.ModelingData.TopoDS_CompSolid.RawType
import HOCCT.ModelingData.TopoDS_CompSolid.Cast
import HOCCT.ModelingData.TopoDS_CompSolid.Interface
import HOCCT.ModelingData.TopoDS_Shape.RawType
import HOCCT.ModelingData.TopoDS_Shape.Cast
import HOCCT.ModelingData.TopoDS_Shape.Interface

instance () => ITopoDS_CompSolid (TopoDS_CompSolid) where

instance () => ITopoDS_Shape (TopoDS_CompSolid) where
