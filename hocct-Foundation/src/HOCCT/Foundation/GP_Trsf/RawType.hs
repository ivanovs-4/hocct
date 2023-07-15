{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.GP_Trsf.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawGP_Trsf

newtype GP_Trsf = GP_Trsf (Ptr RawGP_Trsf)
                    deriving (Eq, Ord, Show)

instance () => FPtr (GP_Trsf) where
        type Raw GP_Trsf = RawGP_Trsf
        get_fptr (GP_Trsf ptr) = ptr
        cast_fptr_to_obj = GP_Trsf
