{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_TrimmedCurve.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_TrimmedCurve.RawType
import HOCCT.ModelingData.Geom_BoundedCurve.Interface

class (IGeom_BoundedCurve a) => IGeom_TrimmedCurve a where

upcastGeom_TrimmedCurve ::
                        forall a . (FPtr a, IGeom_TrimmedCurve a) => a -> Geom_TrimmedCurve
upcastGeom_TrimmedCurve h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_TrimmedCurve = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_TrimmedCurve ::
                          forall a . (FPtr a, IGeom_TrimmedCurve a) => Geom_TrimmedCurve -> a
downcastGeom_TrimmedCurve h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
