{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Parabola.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Parabola

newtype Geom_Parabola = Geom_Parabola (Ptr RawGeom_Parabola)
                          deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Parabola) where
        type Raw Geom_Parabola = RawGeom_Parabola
        get_fptr (Geom_Parabola ptr) = ptr
        cast_fptr_to_obj = Geom_Parabola
