{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_RectangularTrimmedSurface.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_RectangularTrimmedSurface

newtype Geom_RectangularTrimmedSurface = Geom_RectangularTrimmedSurface (Ptr
                                                                           RawGeom_RectangularTrimmedSurface)
                                           deriving (Eq, Ord, Show)

instance () => FPtr (Geom_RectangularTrimmedSurface) where
        type Raw Geom_RectangularTrimmedSurface =
             RawGeom_RectangularTrimmedSurface
        get_fptr (Geom_RectangularTrimmedSurface ptr) = ptr
        cast_fptr_to_obj = Geom_RectangularTrimmedSurface
