{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Curve.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Curve.RawType
import HOCCT.ModelingData.Geom_Geometry.Interface

class (IGeom_Geometry a) => IGeom_Curve a where

upcastGeom_Curve ::
                 forall a . (FPtr a, IGeom_Curve a) => a -> Geom_Curve
upcastGeom_Curve h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Curve = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Curve ::
                   forall a . (FPtr a, IGeom_Curve a) => Geom_Curve -> a
downcastGeom_Curve h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
