{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.GCE_MakeScale.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGCE_MakeScale

newtype GCE_MakeScale = GCE_MakeScale (Ptr RawGCE_MakeScale)
                          deriving (Eq, Ord, Show)

instance () => FPtr (GCE_MakeScale) where
        type Raw GCE_MakeScale = RawGCE_MakeScale
        get_fptr (GCE_MakeScale ptr) = ptr
        cast_fptr_to_obj = GCE_MakeScale
