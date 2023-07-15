{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Line.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Line

newtype Geom_Line = Geom_Line (Ptr RawGeom_Line)
                      deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Line) where
        type Raw Geom_Line = RawGeom_Line
        get_fptr (Geom_Line ptr) = ptr
        cast_fptr_to_obj = Geom_Line
