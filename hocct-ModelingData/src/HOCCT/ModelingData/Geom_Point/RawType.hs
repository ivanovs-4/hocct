{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Point.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Point

newtype Geom_Point = Geom_Point (Ptr RawGeom_Point)
                       deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Point) where
        type Raw Geom_Point = RawGeom_Point
        get_fptr (Geom_Point ptr) = ptr
        cast_fptr_to_obj = Geom_Point
