{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_RectangularTrimmedSurface.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_RectangularTrimmedSurface.RawType
import HOCCT.ModelingData.Geom_BoundedSurface.Interface

class (IGeom_BoundedSurface a) => IGeom_RectangularTrimmedSurface a
      where

upcastGeom_RectangularTrimmedSurface ::
                                     forall a . (FPtr a, IGeom_RectangularTrimmedSurface a) =>
                                       a -> Geom_RectangularTrimmedSurface
upcastGeom_RectangularTrimmedSurface h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_RectangularTrimmedSurface = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_RectangularTrimmedSurface ::
                                       forall a . (FPtr a, IGeom_RectangularTrimmedSurface a) =>
                                         Geom_RectangularTrimmedSurface -> a
downcastGeom_RectangularTrimmedSurface h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
