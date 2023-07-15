{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.GCE_MakeTranslation.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGCE_MakeTranslation

newtype GCE_MakeTranslation = GCE_MakeTranslation (Ptr
                                                     RawGCE_MakeTranslation)
                                deriving (Eq, Ord, Show)

instance () => FPtr (GCE_MakeTranslation) where
        type Raw GCE_MakeTranslation = RawGCE_MakeTranslation
        get_fptr (GCE_MakeTranslation ptr) = ptr
        cast_fptr_to_obj = GCE_MakeTranslation
