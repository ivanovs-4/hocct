{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_OffsetCurve.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_OffsetCurve

newtype Geom_OffsetCurve = Geom_OffsetCurve (Ptr
                                               RawGeom_OffsetCurve)
                             deriving (Eq, Ord, Show)

instance () => FPtr (Geom_OffsetCurve) where
        type Raw Geom_OffsetCurve = RawGeom_OffsetCurve
        get_fptr (Geom_OffsetCurve ptr) = ptr
        cast_fptr_to_obj = Geom_OffsetCurve
