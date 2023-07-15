{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_BoundedCurve.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_BoundedCurve

newtype Geom_BoundedCurve = Geom_BoundedCurve (Ptr
                                                 RawGeom_BoundedCurve)
                              deriving (Eq, Ord, Show)

instance () => FPtr (Geom_BoundedCurve) where
        type Raw Geom_BoundedCurve = RawGeom_BoundedCurve
        get_fptr (Geom_BoundedCurve ptr) = ptr
        cast_fptr_to_obj = Geom_BoundedCurve
