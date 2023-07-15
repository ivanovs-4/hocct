{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BezierSurface.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_BezierSurface.RawType
import HOCCT.ModelingData.Geom_BoundedSurface.Interface

class (IGeom_BoundedSurface a) => IGeom_BezierSurface a where

upcastGeom_BezierSurface ::
                         forall a . (FPtr a, IGeom_BezierSurface a) =>
                           a -> Geom_BezierSurface
upcastGeom_BezierSurface h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_BezierSurface = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_BezierSurface ::
                           forall a . (FPtr a, IGeom_BezierSurface a) =>
                             Geom_BezierSurface -> a
downcastGeom_BezierSurface h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
