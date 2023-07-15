{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Surface.Implementation where
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
import HOCCT.ModelingData.Geom_Surface.RawType
import HOCCT.ModelingData.Geom_Surface.FFI
import HOCCT.ModelingData.Geom_Surface.Interface
import HOCCT.ModelingData.Geom_Surface.Cast
import HOCCT.ModelingData.Geom_Surface.RawType
import HOCCT.ModelingData.Geom_Surface.Cast
import HOCCT.ModelingData.Geom_Surface.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_Surface (Geom_Surface) where

instance () => IGeom_Geometry (Geom_Surface) where
