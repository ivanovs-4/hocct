{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_BSplineSurface.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_BSplineSurface

newtype Geom_BSplineSurface = Geom_BSplineSurface (Ptr
                                                     RawGeom_BSplineSurface)
                                deriving (Eq, Ord, Show)

instance () => FPtr (Geom_BSplineSurface) where
        type Raw Geom_BSplineSurface = RawGeom_BSplineSurface
        get_fptr (Geom_BSplineSurface ptr) = ptr
        cast_fptr_to_obj = Geom_BSplineSurface
