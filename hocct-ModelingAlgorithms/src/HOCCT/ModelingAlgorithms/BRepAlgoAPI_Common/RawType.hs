{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Common.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_Common

newtype BRepAlgoAPI_Common = BRepAlgoAPI_Common (Ptr
                                                   RawBRepAlgoAPI_Common)
                               deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_Common) where
        type Raw BRepAlgoAPI_Common = RawBRepAlgoAPI_Common
        get_fptr (BRepAlgoAPI_Common ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_Common
