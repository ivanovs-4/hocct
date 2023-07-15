{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Line.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Line.RawType
import HOCCT.ModelingData.Geom_Curve.Interface

class (IGeom_Curve a) => IGeom_Line a where

upcastGeom_Line ::
                forall a . (FPtr a, IGeom_Line a) => a -> Geom_Line
upcastGeom_Line h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Line = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Line ::
                  forall a . (FPtr a, IGeom_Line a) => Geom_Line -> a
downcastGeom_Line h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
