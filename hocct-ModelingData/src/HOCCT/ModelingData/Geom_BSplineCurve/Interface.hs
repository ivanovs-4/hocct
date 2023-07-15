{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BSplineCurve.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_BSplineCurve.RawType
import HOCCT.ModelingData.Geom_BoundedCurve.Interface

class (IGeom_BoundedCurve a) => IGeom_BSplineCurve a where

upcastGeom_BSplineCurve ::
                        forall a . (FPtr a, IGeom_BSplineCurve a) => a -> Geom_BSplineCurve
upcastGeom_BSplineCurve h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_BSplineCurve = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_BSplineCurve ::
                          forall a . (FPtr a, IGeom_BSplineCurve a) => Geom_BSplineCurve -> a
downcastGeom_BSplineCurve h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
