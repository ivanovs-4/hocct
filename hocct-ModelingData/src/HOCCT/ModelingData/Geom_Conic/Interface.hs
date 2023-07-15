{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Conic.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Conic.RawType
import HOCCT.ModelingData.Geom_Curve.Interface

class (IGeom_Curve a) => IGeom_Conic a where

upcastGeom_Conic ::
                 forall a . (FPtr a, IGeom_Conic a) => a -> Geom_Conic
upcastGeom_Conic h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Conic = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Conic ::
                   forall a . (FPtr a, IGeom_Conic a) => Geom_Conic -> a
downcastGeom_Conic h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
