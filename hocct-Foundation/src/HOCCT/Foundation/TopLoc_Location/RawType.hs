{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.Foundation.TopLoc_Location.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopLoc_Location

newtype TopLoc_Location = TopLoc_Location (Ptr RawTopLoc_Location)
                            deriving (Eq, Ord, Show)

instance () => FPtr (TopLoc_Location) where
        type Raw TopLoc_Location = RawTopLoc_Location
        get_fptr (TopLoc_Location ptr) = ptr
        cast_fptr_to_obj = TopLoc_Location
