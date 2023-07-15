{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Splitter.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_Splitter

newtype BRepAlgoAPI_Splitter = BRepAlgoAPI_Splitter (Ptr
                                                       RawBRepAlgoAPI_Splitter)
                                 deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_Splitter) where
        type Raw BRepAlgoAPI_Splitter = RawBRepAlgoAPI_Splitter
        get_fptr (BRepAlgoAPI_Splitter ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_Splitter
