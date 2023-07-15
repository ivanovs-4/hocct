{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_CartesianPoint.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_CartesianPoint.RawType
import HOCCT.ModelingData.Geom_Point.Interface

class (IGeom_Point a) => IGeom_CartesianPoint a where

upcastGeom_CartesianPoint ::
                          forall a . (FPtr a, IGeom_CartesianPoint a) =>
                            a -> Geom_CartesianPoint
upcastGeom_CartesianPoint h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_CartesianPoint = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_CartesianPoint ::
                            forall a . (FPtr a, IGeom_CartesianPoint a) =>
                              Geom_CartesianPoint -> a
downcastGeom_CartesianPoint h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
