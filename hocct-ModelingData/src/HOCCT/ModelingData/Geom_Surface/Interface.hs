{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Surface.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Surface.RawType
import HOCCT.ModelingData.Geom_Geometry.Interface

class (IGeom_Geometry a) => IGeom_Surface a where

upcastGeom_Surface ::
                   forall a . (FPtr a, IGeom_Surface a) => a -> Geom_Surface
upcastGeom_Surface h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Surface = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Surface ::
                     forall a . (FPtr a, IGeom_Surface a) => Geom_Surface -> a
downcastGeom_Surface h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
