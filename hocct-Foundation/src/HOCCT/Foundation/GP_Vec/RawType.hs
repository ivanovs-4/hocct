{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_Vec.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_Vec

newtype GP_Vec = GP_Vec (Ptr RawGP_Vec)
                   deriving (Eq, Ord, Show)

instance () => FPtr (GP_Vec) where
        type Raw GP_Vec = RawGP_Vec
        get_fptr (GP_Vec ptr) = ptr
        cast_fptr_to_obj = GP_Vec
