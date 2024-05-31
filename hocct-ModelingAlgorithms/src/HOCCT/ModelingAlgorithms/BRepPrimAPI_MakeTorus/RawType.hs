{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeTorus

newtype BRepPrimAPI_MakeTorus = BRepPrimAPI_MakeTorus (Ptr
                                                         RawBRepPrimAPI_MakeTorus)
                                  deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeTorus) where
        type Raw BRepPrimAPI_MakeTorus = RawBRepPrimAPI_MakeTorus
        get_fptr (BRepPrimAPI_MakeTorus ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeTorus
