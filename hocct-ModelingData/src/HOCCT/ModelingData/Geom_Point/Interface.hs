{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Point.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Point.RawType
import HOCCT.ModelingData.Geom_Geometry.Interface

class (IGeom_Geometry a) => IGeom_Point a where

upcastGeom_Point ::
                 forall a . (FPtr a, IGeom_Point a) => a -> Geom_Point
upcastGeom_Point h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Point = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Point ::
                   forall a . (FPtr a, IGeom_Point a) => Geom_Point -> a
downcastGeom_Point h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
