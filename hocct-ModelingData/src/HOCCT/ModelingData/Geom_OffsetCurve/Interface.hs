{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingData.Geom_OffsetCurve.Interface where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingData.Geom_OffsetCurve.RawType
import HOCCT.ModelingData.Geom_Curve.Interface

class (IGeom_Curve a) => IGeom_OffsetCurve a where

upcastGeom_OffsetCurve ::
                       forall a . (FPtr a, IGeom_OffsetCurve a) => a -> Geom_OffsetCurve
upcastGeom_OffsetCurve h
  = let fh = get_fptr h
        fh2 :: Ptr RawGeom_OffsetCurve = castPtr fh
      in cast_fptr_to_obj fh2

downcastGeom_OffsetCurve ::
                         forall a . (FPtr a, IGeom_OffsetCurve a) => Geom_OffsetCurve -> a
downcastGeom_OffsetCurve h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
