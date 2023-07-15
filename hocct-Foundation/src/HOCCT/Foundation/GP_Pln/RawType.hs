{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_Pln.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_Pln

newtype GP_Pln = GP_Pln (Ptr RawGP_Pln)
                   deriving (Eq, Ord, Show)

instance () => FPtr (GP_Pln) where
        type Raw GP_Pln = RawGP_Pln
        get_fptr (GP_Pln ptr) = ptr
        cast_fptr_to_obj = GP_Pln
