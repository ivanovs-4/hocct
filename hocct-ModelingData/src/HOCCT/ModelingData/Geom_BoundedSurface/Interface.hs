{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BoundedSurface.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_BoundedSurface.RawType
import HOCCT.ModelingData.Geom_Surface.Interface

class (IGeom_Surface a) => IGeom_BoundedSurface a where

upcastGeom_BoundedSurface ::
                          forall a . (FPtr a, IGeom_BoundedSurface a) =>
                            a -> Geom_BoundedSurface
upcastGeom_BoundedSurface h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_BoundedSurface = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_BoundedSurface ::
                            forall a . (FPtr a, IGeom_BoundedSurface a) =>
                              Geom_BoundedSurface -> a
downcastGeom_BoundedSurface h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
