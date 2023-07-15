{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.Geom_Conic.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGeom_Conic

newtype Geom_Conic = Geom_Conic (Ptr RawGeom_Conic)
                       deriving (Eq, Ord, Show)

instance () => FPtr (Geom_Conic) where
        type Raw Geom_Conic = RawGeom_Conic
        get_fptr (Geom_Conic ptr) = ptr
        cast_fptr_to_obj = Geom_Conic
