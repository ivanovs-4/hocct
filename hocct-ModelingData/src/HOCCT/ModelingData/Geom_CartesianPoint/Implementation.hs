{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_CartesianPoint.Implementation where
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
import HOCCT.ModelingData.Geom_CartesianPoint.RawType
import HOCCT.ModelingData.Geom_CartesianPoint.FFI
import HOCCT.ModelingData.Geom_CartesianPoint.Interface
import HOCCT.ModelingData.Geom_CartesianPoint.Cast
import HOCCT.ModelingData.Geom_CartesianPoint.RawType
import HOCCT.ModelingData.Geom_CartesianPoint.Cast
import HOCCT.ModelingData.Geom_CartesianPoint.Interface
import HOCCT.ModelingData.Geom_Point.RawType
import HOCCT.ModelingData.Geom_Point.Cast
import HOCCT.ModelingData.Geom_Point.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_CartesianPoint (Geom_CartesianPoint) where

instance () => IGeom_Point (Geom_CartesianPoint) where

instance () => IGeom_Geometry (Geom_CartesianPoint) where
