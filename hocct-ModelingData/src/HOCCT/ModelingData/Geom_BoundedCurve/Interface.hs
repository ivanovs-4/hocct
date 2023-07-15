{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BoundedCurve.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_BoundedCurve.RawType
import HOCCT.ModelingData.Geom_Curve.Interface

class (IGeom_Curve a) => IGeom_BoundedCurve a where

upcastGeom_BoundedCurve ::
                        forall a . (FPtr a, IGeom_BoundedCurve a) => a -> Geom_BoundedCurve
upcastGeom_BoundedCurve h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_BoundedCurve = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_BoundedCurve ::
                          forall a . (FPtr a, IGeom_BoundedCurve a) => Geom_BoundedCurve -> a
downcastGeom_BoundedCurve h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
