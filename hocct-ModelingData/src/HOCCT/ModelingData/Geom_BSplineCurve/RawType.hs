{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_BSplineCurve.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_BSplineCurve

newtype Geom_BSplineCurve = Geom_BSplineCurve (Ptr
                                                 RawGeom_BSplineCurve)
                              deriving (Eq, Ord, Show)

instance () => FPtr (Geom_BSplineCurve) where
        type Raw Geom_BSplineCurve = RawGeom_BSplineCurve
        get_fptr (Geom_BSplineCurve ptr) = ptr
        cast_fptr_to_obj = Geom_BSplineCurve
