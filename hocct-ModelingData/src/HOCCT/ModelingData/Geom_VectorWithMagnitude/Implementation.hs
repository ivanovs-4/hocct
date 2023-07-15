{-# LANGUAGE EmptyDataDecls, FlexibleContexts, FlexibleInstances,
  ForeignFunctionInterface, IncoherentInstances,
  MultiParamTypeClasses, OverlappingInstances, TemplateHaskell,
  TypeFamilies, TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_VectorWithMagnitude.Implementation
       where
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
import HOCCT.ModelingData.Geom_VectorWithMagnitude.RawType
import HOCCT.ModelingData.Geom_VectorWithMagnitude.FFI
import HOCCT.ModelingData.Geom_VectorWithMagnitude.Interface
import HOCCT.ModelingData.Geom_VectorWithMagnitude.Cast
import HOCCT.ModelingData.Geom_VectorWithMagnitude.RawType
import HOCCT.ModelingData.Geom_VectorWithMagnitude.Cast
import HOCCT.ModelingData.Geom_VectorWithMagnitude.Interface
import HOCCT.ModelingData.Geom_Vector.RawType
import HOCCT.ModelingData.Geom_Vector.Cast
import HOCCT.ModelingData.Geom_Vector.Interface
import HOCCT.ModelingData.Geom_Geometry.RawType
import HOCCT.ModelingData.Geom_Geometry.Cast
import HOCCT.ModelingData.Geom_Geometry.Interface

instance () => IGeom_VectorWithMagnitude (Geom_VectorWithMagnitude)
         where

instance () => IGeom_Vector (Geom_VectorWithMagnitude) where

instance () => IGeom_Geometry (Geom_VectorWithMagnitude) where
