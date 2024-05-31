{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_MakeThickSolid.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepOffsetAPI_MakeThickSolid

newtype BRepOffsetAPI_MakeThickSolid = BRepOffsetAPI_MakeThickSolid (Ptr
                                                                       RawBRepOffsetAPI_MakeThickSolid)
                                         deriving (Eq, Ord, Show)

instance () => FPtr (BRepOffsetAPI_MakeThickSolid) where
        type Raw BRepOffsetAPI_MakeThickSolid =
             RawBRepOffsetAPI_MakeThickSolid
        get_fptr (BRepOffsetAPI_MakeThickSolid ptr) = ptr
        cast_fptr_to_obj = BRepOffsetAPI_MakeThickSolid
