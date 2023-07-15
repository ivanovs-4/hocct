{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_Dir.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_Dir

newtype GP_Dir = GP_Dir (Ptr RawGP_Dir)
                   deriving (Eq, Ord, Show)

instance () => FPtr (GP_Dir) where
        type Raw GP_Dir = RawGP_Dir
        get_fptr (GP_Dir ptr) = ptr
        cast_fptr_to_obj = GP_Dir
