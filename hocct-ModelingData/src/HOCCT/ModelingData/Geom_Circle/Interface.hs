{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Circle.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Circle.RawType
import HOCCT.ModelingData.Geom_Conic.Interface

class (IGeom_Conic a) => IGeom_Circle a where

upcastGeom_Circle ::
                  forall a . (FPtr a, IGeom_Circle a) => a -> Geom_Circle
upcastGeom_Circle h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Circle = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Circle ::
                    forall a . (FPtr a, IGeom_Circle a) => Geom_Circle -> a
downcastGeom_Circle h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
