{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_BezierCurve.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_BezierCurve.RawType
import HOCCT.ModelingData.Geom_BoundedCurve.Interface

class (IGeom_BoundedCurve a) => IGeom_BezierCurve a where

upcastGeom_BezierCurve ::
                       forall a . (FPtr a, IGeom_BezierCurve a) => a -> Geom_BezierCurve
upcastGeom_BezierCurve h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_BezierCurve = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_BezierCurve ::
                         forall a . (FPtr a, IGeom_BezierCurve a) => Geom_BezierCurve -> a
downcastGeom_BezierCurve h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
