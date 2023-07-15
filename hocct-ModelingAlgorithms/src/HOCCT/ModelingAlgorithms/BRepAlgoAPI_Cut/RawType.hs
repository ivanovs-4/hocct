{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Cut.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_Cut

newtype BRepAlgoAPI_Cut = BRepAlgoAPI_Cut (Ptr RawBRepAlgoAPI_Cut)
                            deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_Cut) where
        type Raw BRepAlgoAPI_Cut = RawBRepAlgoAPI_Cut
        get_fptr (BRepAlgoAPI_Cut ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_Cut
