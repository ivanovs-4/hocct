{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Parabola.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Parabola.RawType
import HOCCT.ModelingData.Geom_Conic.Interface

class (IGeom_Conic a) => IGeom_Parabola a where

upcastGeom_Parabola ::
                    forall a . (FPtr a, IGeom_Parabola a) => a -> Geom_Parabola
upcastGeom_Parabola h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Parabola = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Parabola ::
                      forall a . (FPtr a, IGeom_Parabola a) => Geom_Parabola -> a
downcastGeom_Parabola h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
