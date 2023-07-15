{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Line.Implementation where
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
import HOCCT.ModelingData.Geom_Line.RawType
import HOCCT.ModelingData.Geom_Line.FFI
import HOCCT.ModelingData.Geom_Line.Interface
import HOCCT.ModelingData.Geom_Line.Cast
import HOCCT.ModelingData.Geom_Line.RawType
import HOCCT.ModelingData.Geom_Line.Cast
import HOCCT.ModelingData.Geom_Line.Interface
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.ModelingData.Geom_Curve.Cast
import HOCCT.ModelingData.Geom_Curve.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_Line (Geom_Line) where

instance () => IGeom_Curve (Geom_Line) where

instance () => IGeom_Geometry (Geom_Line) where
