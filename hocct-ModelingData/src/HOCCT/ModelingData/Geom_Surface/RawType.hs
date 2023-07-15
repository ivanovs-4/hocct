{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Surface.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Surface

newtype Geom_Surface = Geom_Surface (Ptr RawGeom_Surface)
                         deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Surface) where
        type Raw Geom_Surface = RawGeom_Surface
        get_fptr (Geom_Surface ptr) = ptr
        cast_fptr_to_obj = Geom_Surface
