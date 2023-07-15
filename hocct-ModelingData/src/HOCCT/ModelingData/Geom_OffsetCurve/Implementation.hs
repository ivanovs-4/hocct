{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_OffsetCurve.Implementation where
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
import HOCCT.ModelingData.Geom_OffsetCurve.RawType
import HOCCT.ModelingData.Geom_OffsetCurve.FFI
import HOCCT.ModelingData.Geom_OffsetCurve.Interface
import HOCCT.ModelingData.Geom_OffsetCurve.Cast
import HOCCT.ModelingData.Geom_OffsetCurve.RawType
import HOCCT.ModelingData.Geom_OffsetCurve.Cast
import HOCCT.ModelingData.Geom_OffsetCurve.Interface
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.ModelingData.Geom_Curve.Cast
import HOCCT.ModelingData.Geom_Curve.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_OffsetCurve (Geom_OffsetCurve) where

instance () => IGeom_Curve (Geom_OffsetCurve) where

instance () => IGeom_Geometry (Geom_OffsetCurve) where
