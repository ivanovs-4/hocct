{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopExp_Explorer.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopExp_Explorer

newtype TopExp_Explorer = TopExp_Explorer (Ptr RawTopExp_Explorer)
                            deriving (Eq, Ord, Show)

instance () => FPtr (TopExp_Explorer) where
        type Raw TopExp_Explorer = RawTopExp_Explorer
        get_fptr (TopExp_Explorer ptr) = ptr
        cast_fptr_to_obj = TopExp_Explorer
