{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.GC_MakeSegment.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGC_MakeSegment

newtype GC_MakeSegment = GC_MakeSegment (Ptr RawGC_MakeSegment)
                           deriving (Eq, Ord, Show)

instance () => FPtr (GC_MakeSegment) where
        type Raw GC_MakeSegment = RawGC_MakeSegment
        get_fptr (GC_MakeSegment ptr) = ptr
        cast_fptr_to_obj = GC_MakeSegment
