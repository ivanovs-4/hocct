{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.GC_Root.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGC_Root

newtype GC_Root = GC_Root (Ptr RawGC_Root)
                    deriving (Eq, Ord, Show)

instance () => FPtr (GC_Root) where
        type Raw GC_Root = RawGC_Root
        get_fptr (GC_Root ptr) = ptr
        cast_fptr_to_obj = GC_Root
