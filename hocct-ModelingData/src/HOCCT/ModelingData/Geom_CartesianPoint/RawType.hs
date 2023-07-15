{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_CartesianPoint.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_CartesianPoint

newtype Geom_CartesianPoint = Geom_CartesianPoint (Ptr
                                                     RawGeom_CartesianPoint)
                                deriving (Eq, Ord, Show)

instance () => FPtr (Geom_CartesianPoint) where
        type Raw Geom_CartesianPoint = RawGeom_CartesianPoint
        get_fptr (Geom_CartesianPoint ptr) = ptr
        cast_fptr_to_obj = Geom_CartesianPoint
