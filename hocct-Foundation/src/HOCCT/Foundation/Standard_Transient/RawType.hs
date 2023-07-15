{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.Standard_Transient.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawStandard_Transient

newtype Standard_Transient = Standard_Transient (Ptr
                                                   RawStandard_Transient)
                               deriving (Eq, Ord, Show)

instance () => FPtr (Standard_Transient) where
        type Raw Standard_Transient = RawStandard_Transient
        get_fptr (Standard_Transient ptr) = ptr
        cast_fptr_to_obj = Standard_Transient
