{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_VectorWithMagnitude.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_VectorWithMagnitude.RawType
import HOCCT.ModelingData.Geom_Vector.Interface

class (IGeom_Vector a) => IGeom_VectorWithMagnitude a where

upcastGeom_VectorWithMagnitude ::
                               forall a . (FPtr a, IGeom_VectorWithMagnitude a) =>
                                 a -> Geom_VectorWithMagnitude
upcastGeom_VectorWithMagnitude h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_VectorWithMagnitude = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_VectorWithMagnitude ::
                                 forall a . (FPtr a, IGeom_VectorWithMagnitude a) =>
                                   Geom_VectorWithMagnitude -> a
downcastGeom_VectorWithMagnitude h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
