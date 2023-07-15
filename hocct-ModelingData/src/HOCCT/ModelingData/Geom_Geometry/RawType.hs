{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Geometry.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Geometry

newtype Geom_Geometry = Geom_Geometry (Ptr RawGeom_Geometry)
                          deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Geometry) where
        type Raw Geom_Geometry = RawGeom_Geometry
        get_fptr (Geom_Geometry ptr) = ptr
        cast_fptr_to_obj = Geom_Geometry
