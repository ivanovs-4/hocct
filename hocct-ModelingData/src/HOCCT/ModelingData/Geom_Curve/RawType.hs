{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Curve.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Curve

newtype Geom_Curve = Geom_Curve (Ptr RawGeom_Curve)
                       deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Curve) where
        type Raw Geom_Curve = RawGeom_Curve
        get_fptr (Geom_Curve ptr) = ptr
        cast_fptr_to_obj = Geom_Curve
