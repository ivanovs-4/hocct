{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeSweep

newtype BRepPrimAPI_MakeSweep = BRepPrimAPI_MakeSweep (Ptr
                                                         RawBRepPrimAPI_MakeSweep)
                                  deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeSweep) where
        type Raw BRepPrimAPI_MakeSweep = RawBRepPrimAPI_MakeSweep
        get_fptr (BRepPrimAPI_MakeSweep ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeSweep
