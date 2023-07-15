{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Vector.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Vector.RawType
import HOCCT.ModelingData.Geom_Geometry.Interface

class (IGeom_Geometry a) => IGeom_Vector a where

upcastGeom_Vector ::
                  forall a . (FPtr a, IGeom_Vector a) => a -> Geom_Vector
upcastGeom_Vector h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Vector = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Vector ::
                    forall a . (FPtr a, IGeom_Vector a) => Geom_Vector -> a
downcastGeom_Vector h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
