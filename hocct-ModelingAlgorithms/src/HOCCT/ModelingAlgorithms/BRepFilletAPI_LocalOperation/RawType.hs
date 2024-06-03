{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepFilletAPI_LocalOperation

newtype BRepFilletAPI_LocalOperation = BRepFilletAPI_LocalOperation (Ptr
                                                                       RawBRepFilletAPI_LocalOperation)
                                         deriving (Eq, Ord, Show)

instance () => FPtr (BRepFilletAPI_LocalOperation) where
        type Raw BRepFilletAPI_LocalOperation =
             RawBRepFilletAPI_LocalOperation
        get_fptr (BRepFilletAPI_LocalOperation ptr) = ptr
        cast_fptr_to_obj = BRepFilletAPI_LocalOperation
