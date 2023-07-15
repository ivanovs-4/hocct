{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Ellipse.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Ellipse.RawType
import HOCCT.ModelingData.Geom_Conic.Interface

class (IGeom_Conic a) => IGeom_Ellipse a where

upcastGeom_Ellipse ::
                   forall a . (FPtr a, IGeom_Ellipse a) => a -> Geom_Ellipse
upcastGeom_Ellipse h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Ellipse = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Ellipse ::
                     forall a . (FPtr a, IGeom_Ellipse a) => Geom_Ellipse -> a
downcastGeom_Ellipse h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
