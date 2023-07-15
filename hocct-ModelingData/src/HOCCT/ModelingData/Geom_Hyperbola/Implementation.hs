{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Hyperbola.Implementation where
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
import HOCCT.ModelingData.Geom_Hyperbola.RawType
import HOCCT.ModelingData.Geom_Hyperbola.FFI
import HOCCT.ModelingData.Geom_Hyperbola.Interface
import HOCCT.ModelingData.Geom_Hyperbola.Cast
import HOCCT.ModelingData.Geom_Hyperbola.RawType
import HOCCT.ModelingData.Geom_Hyperbola.Cast
import HOCCT.ModelingData.Geom_Hyperbola.Interface
import HOCCT.ModelingData.Geom_Conic.RawType
import HOCCT.ModelingData.Geom_Conic.Cast
import HOCCT.ModelingData.Geom_Conic.Interface
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.ModelingData.Geom_Curve.Cast
import HOCCT.ModelingData.Geom_Curve.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_Hyperbola (Geom_Hyperbola) where

instance () => IGeom_Conic (Geom_Hyperbola) where

instance () => IGeom_Curve (Geom_Hyperbola) where

instance () => IGeom_Geometry (Geom_Hyperbola) where
