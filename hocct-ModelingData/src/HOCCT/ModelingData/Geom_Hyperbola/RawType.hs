{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Hyperbola.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Hyperbola

newtype Geom_Hyperbola = Geom_Hyperbola (Ptr RawGeom_Hyperbola)
                           deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Hyperbola) where
        type Raw Geom_Hyperbola = RawGeom_Hyperbola
        get_fptr (Geom_Hyperbola ptr) = ptr
        cast_fptr_to_obj = Geom_Hyperbola
