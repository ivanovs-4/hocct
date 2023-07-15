{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_Lin.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_Lin

newtype GP_Lin = GP_Lin (Ptr RawGP_Lin)
                   deriving (Eq, Ord, Show)

instance () => FPtr (GP_Lin) where
        type Raw GP_Lin = RawGP_Lin
        get_fptr (GP_Lin ptr) = ptr
        cast_fptr_to_obj = GP_Lin
