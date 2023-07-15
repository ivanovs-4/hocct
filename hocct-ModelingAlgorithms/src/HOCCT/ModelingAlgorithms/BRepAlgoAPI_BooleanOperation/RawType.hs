{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_BooleanOperation.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_BooleanOperation

newtype BRepAlgoAPI_BooleanOperation = BRepAlgoAPI_BooleanOperation (Ptr
                                                                       RawBRepAlgoAPI_BooleanOperation)
                                         deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_BooleanOperation) where
        type Raw BRepAlgoAPI_BooleanOperation =
             RawBRepAlgoAPI_BooleanOperation
        get_fptr (BRepAlgoAPI_BooleanOperation ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_BooleanOperation
