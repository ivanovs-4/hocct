{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_BoundedSurface.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_BoundedSurface

newtype Geom_BoundedSurface = Geom_BoundedSurface (Ptr
                                                     RawGeom_BoundedSurface)
                                deriving (Eq, Ord, Show)

instance () => FPtr (Geom_BoundedSurface) where
        type Raw Geom_BoundedSurface = RawGeom_BoundedSurface
        get_fptr (Geom_BoundedSurface ptr) = ptr
        cast_fptr_to_obj = Geom_BoundedSurface
