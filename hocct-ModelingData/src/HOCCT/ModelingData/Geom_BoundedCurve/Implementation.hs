{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BoundedCurve.Implementation where
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
import HOCCT.ModelingData.Geom_BoundedCurve.RawType
import HOCCT.ModelingData.Geom_BoundedCurve.FFI
import HOCCT.ModelingData.Geom_BoundedCurve.Interface
import HOCCT.ModelingData.Geom_BoundedCurve.Cast
import HOCCT.ModelingData.Geom_BoundedCurve.RawType
import HOCCT.ModelingData.Geom_BoundedCurve.Cast
import HOCCT.ModelingData.Geom_BoundedCurve.Interface
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.ModelingData.Geom_Curve.Cast
import HOCCT.ModelingData.Geom_Curve.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_BoundedCurve (Geom_BoundedCurve) where

instance () => IGeom_Curve (Geom_BoundedCurve) where

instance () => IGeom_Geometry (Geom_BoundedCurve) where
