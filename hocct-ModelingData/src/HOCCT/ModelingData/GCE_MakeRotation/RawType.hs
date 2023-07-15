{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.GCE_MakeRotation.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGCE_MakeRotation

newtype GCE_MakeRotation = GCE_MakeRotation (Ptr
                                               RawGCE_MakeRotation)
                             deriving (Eq, Ord, Show)

instance () => FPtr (GCE_MakeRotation) where
        type Raw GCE_MakeRotation = RawGCE_MakeRotation
        get_fptr (GCE_MakeRotation ptr) = ptr
        cast_fptr_to_obj = GCE_MakeRotation
