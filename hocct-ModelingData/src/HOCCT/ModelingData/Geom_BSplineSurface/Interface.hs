{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BSplineSurface.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_BSplineSurface.RawType
import HOCCT.ModelingData.Geom_BoundedSurface.Interface

class (IGeom_BoundedSurface a) => IGeom_BSplineSurface a where

upcastGeom_BSplineSurface ::
                          forall a . (FPtr a, IGeom_BSplineSurface a) =>
                            a -> Geom_BSplineSurface
upcastGeom_BSplineSurface h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_BSplineSurface = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_BSplineSurface ::
                            forall a . (FPtr a, IGeom_BSplineSurface a) =>
                              Geom_BSplineSurface -> a
downcastGeom_BSplineSurface h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
