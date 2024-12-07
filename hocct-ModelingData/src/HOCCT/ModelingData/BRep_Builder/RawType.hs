{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.BRep_Builder.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRep_Builder

newtype BRep_Builder = BRep_Builder (Ptr RawBRep_Builder)
                         deriving (Eq, Ord, Show)

instance () => FPtr (BRep_Builder) where
        type Raw BRep_Builder = RawBRep_Builder
        get_fptr (BRep_Builder ptr) = ptr
        cast_fptr_to_obj = BRep_Builder
