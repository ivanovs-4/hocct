{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Circle.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Circle

newtype Geom_Circle = Geom_Circle (Ptr RawGeom_Circle)
                        deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Circle) where
        type Raw Geom_Circle = RawGeom_Circle
        get_fptr (Geom_Circle ptr) = ptr
        cast_fptr_to_obj = Geom_Circle
