{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Vector.Implementation where
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
import HOCCT.ModelingData.Geom_Vector.RawType
import HOCCT.ModelingData.Geom_Vector.FFI
import HOCCT.ModelingData.Geom_Vector.Interface
import HOCCT.ModelingData.Geom_Vector.Cast
import HOCCT.ModelingData.Geom_Vector.RawType
import HOCCT.ModelingData.Geom_Vector.Cast
import HOCCT.ModelingData.Geom_Vector.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_Vector (Geom_Vector) where

instance () => IGeom_Geometry (Geom_Vector) where
