{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_Pnt.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_Pnt

newtype GP_Pnt = GP_Pnt (Ptr RawGP_Pnt)
                   deriving (Eq, Ord, Show)

instance () => FPtr (GP_Pnt) where
        type Raw GP_Pnt = RawGP_Pnt
        get_fptr (GP_Pnt ptr) = ptr
        cast_fptr_to_obj = GP_Pnt
