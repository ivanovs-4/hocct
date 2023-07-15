{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Direction.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Direction.RawType
import HOCCT.ModelingData.Geom_Vector.Interface

class (IGeom_Vector a) => IGeom_Direction a where

upcastGeom_Direction ::
                     forall a . (FPtr a, IGeom_Direction a) => a -> Geom_Direction
upcastGeom_Direction h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Direction = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Direction ::
                       forall a . (FPtr a, IGeom_Direction a) => Geom_Direction -> a
downcastGeom_Direction h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
