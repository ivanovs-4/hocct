{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_BezierSurface.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_BezierSurface

newtype Geom_BezierSurface = Geom_BezierSurface (Ptr
                                                   RawGeom_BezierSurface)
                               deriving (Eq, Ord, Show)

instance () => FPtr (Geom_BezierSurface) where
        type Raw Geom_BezierSurface = RawGeom_BezierSurface
        get_fptr (Geom_BezierSurface ptr) = ptr
        cast_fptr_to_obj = Geom_BezierSurface
