{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Direction.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Direction

newtype Geom_Direction = Geom_Direction (Ptr RawGeom_Direction)
                           deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Direction) where
        type Raw Geom_Direction = RawGeom_Direction
        get_fptr (Geom_Direction ptr) = ptr
        cast_fptr_to_obj = Geom_Direction
