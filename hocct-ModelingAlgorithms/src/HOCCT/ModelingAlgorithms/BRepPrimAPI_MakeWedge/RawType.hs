{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeWedge.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeWedge

newtype BRepPrimAPI_MakeWedge = BRepPrimAPI_MakeWedge (Ptr
                                                         RawBRepPrimAPI_MakeWedge)
                                  deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeWedge) where
        type Raw BRepPrimAPI_MakeWedge = RawBRepPrimAPI_MakeWedge
        get_fptr (BRepPrimAPI_MakeWedge ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeWedge
