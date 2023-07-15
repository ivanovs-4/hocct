{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Hyperbola.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Hyperbola.RawType
import HOCCT.ModelingData.Geom_Conic.Interface

class (IGeom_Conic a) => IGeom_Hyperbola a where

upcastGeom_Hyperbola ::
                     forall a . (FPtr a, IGeom_Hyperbola a) => a -> Geom_Hyperbola
upcastGeom_Hyperbola h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Hyperbola = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Hyperbola ::
                       forall a . (FPtr a, IGeom_Hyperbola a) => Geom_Hyperbola -> a
downcastGeom_Hyperbola h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
