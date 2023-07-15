{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_XYZ.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_XYZ

newtype GP_XYZ = GP_XYZ (Ptr RawGP_XYZ)
                   deriving (Eq, Ord, Show)

instance () => FPtr (GP_XYZ) where
        type Raw GP_XYZ = RawGP_XYZ
        get_fptr (GP_XYZ ptr) = ptr
        cast_fptr_to_obj = GP_XYZ
