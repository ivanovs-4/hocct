{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Vector.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Vector

newtype Geom_Vector = Geom_Vector (Ptr RawGeom_Vector)
                        deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Vector) where
        type Raw Geom_Vector = RawGeom_Vector
        get_fptr (Geom_Vector ptr) = ptr
        cast_fptr_to_obj = Geom_Vector
