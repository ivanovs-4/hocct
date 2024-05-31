{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeCylinder.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeCylinder

newtype BRepPrimAPI_MakeCylinder = BRepPrimAPI_MakeCylinder (Ptr
                                                               RawBRepPrimAPI_MakeCylinder)
                                     deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeCylinder) where
        type Raw BRepPrimAPI_MakeCylinder = RawBRepPrimAPI_MakeCylinder
        get_fptr (BRepPrimAPI_MakeCylinder ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeCylinder
