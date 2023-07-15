{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepOffsetAPI_ThruSections.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepOffsetAPI_ThruSections

newtype BRepOffsetAPI_ThruSections = BRepOffsetAPI_ThruSections (Ptr
                                                                   RawBRepOffsetAPI_ThruSections)
                                       deriving (Eq, Ord, Show)

instance () => FPtr (BRepOffsetAPI_ThruSections) where
        type Raw BRepOffsetAPI_ThruSections = RawBRepOffsetAPI_ThruSections
        get_fptr (BRepOffsetAPI_ThruSections ptr) = ptr
        cast_fptr_to_obj = BRepOffsetAPI_ThruSections
