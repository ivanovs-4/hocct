{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCone.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeCone

newtype BRepPrimAPI_MakeCone = BRepPrimAPI_MakeCone (Ptr
                                                       RawBRepPrimAPI_MakeCone)
                                 deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeCone) where
        type Raw BRepPrimAPI_MakeCone = RawBRepPrimAPI_MakeCone
        get_fptr (BRepPrimAPI_MakeCone ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeCone
