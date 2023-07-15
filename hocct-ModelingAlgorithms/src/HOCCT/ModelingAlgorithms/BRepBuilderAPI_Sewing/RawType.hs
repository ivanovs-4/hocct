{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Sewing.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_Sewing

newtype BRepBuilderAPI_Sewing = BRepBuilderAPI_Sewing (Ptr
                                                         RawBRepBuilderAPI_Sewing)
                                  deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_Sewing) where
        type Raw BRepBuilderAPI_Sewing = RawBRepBuilderAPI_Sewing
        get_fptr (BRepBuilderAPI_Sewing ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_Sewing
