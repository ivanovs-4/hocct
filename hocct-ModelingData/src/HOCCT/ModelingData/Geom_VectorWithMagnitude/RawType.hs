{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_VectorWithMagnitude.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_VectorWithMagnitude

newtype Geom_VectorWithMagnitude = Geom_VectorWithMagnitude (Ptr
                                                               RawGeom_VectorWithMagnitude)
                                     deriving (Eq, Ord, Show)

instance () => FPtr (Geom_VectorWithMagnitude) where
        type Raw Geom_VectorWithMagnitude = RawGeom_VectorWithMagnitude
        get_fptr (Geom_VectorWithMagnitude ptr) = ptr
        cast_fptr_to_obj = Geom_VectorWithMagnitude
