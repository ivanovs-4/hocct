{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_TrimmedCurve.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_TrimmedCurve

newtype Geom_TrimmedCurve = Geom_TrimmedCurve (Ptr
                                                 RawGeom_TrimmedCurve)
                              deriving (Eq, Ord, Show)

instance () => FPtr (Geom_TrimmedCurve) where
        type Raw Geom_TrimmedCurve = RawGeom_TrimmedCurve
        get_fptr (Geom_TrimmedCurve ptr) = ptr
        cast_fptr_to_obj = Geom_TrimmedCurve
