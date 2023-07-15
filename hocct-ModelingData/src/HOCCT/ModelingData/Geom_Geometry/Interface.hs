{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_Geometry.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_Geometry.RawType

class () => IGeom_Geometry a where

upcastGeom_Geometry ::
                    forall a . (FPtr a, IGeom_Geometry a) => a -> Geom_Geometry
upcastGeom_Geometry h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_Geometry = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_Geometry ::
                      forall a . (FPtr a, IGeom_Geometry a) => Geom_Geometry -> a
downcastGeom_Geometry h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
