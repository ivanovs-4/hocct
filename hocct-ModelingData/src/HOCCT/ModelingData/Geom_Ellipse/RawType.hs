{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Ellipse.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Ellipse

newtype Geom_Ellipse = Geom_Ellipse (Ptr RawGeom_Ellipse)
                         deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Ellipse) where
        type Raw Geom_Ellipse = RawGeom_Ellipse
        get_fptr (Geom_Ellipse ptr) = ptr
        cast_fptr_to_obj = Geom_Ellipse
