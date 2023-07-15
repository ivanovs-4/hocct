{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_BezierCurve.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_BezierCurve

newtype Geom_BezierCurve = Geom_BezierCurve (Ptr
                                               RawGeom_BezierCurve)
                             deriving (Eq, Ord, Show)

instance () => FPtr (Geom_BezierCurve) where
        type Raw Geom_BezierCurve = RawGeom_BezierCurve
        get_fptr (Geom_BezierCurve ptr) = ptr
        cast_fptr_to_obj = Geom_BezierCurve
