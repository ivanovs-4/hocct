{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.GCE_MakeMirror.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGCE_MakeMirror

newtype GCE_MakeMirror = GCE_MakeMirror (Ptr RawGCE_MakeMirror)
                           deriving (Eq, Ord, Show)

instance () => FPtr (GCE_MakeMirror) where
        type Raw GCE_MakeMirror = RawGCE_MakeMirror
        get_fptr (GCE_MakeMirror ptr) = ptr
        cast_fptr_to_obj = GCE_MakeMirror
