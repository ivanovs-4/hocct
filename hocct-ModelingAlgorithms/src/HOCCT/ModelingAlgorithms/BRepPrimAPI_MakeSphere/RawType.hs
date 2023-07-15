{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrimAPI_MakeSphere

newtype BRepPrimAPI_MakeSphere = BRepPrimAPI_MakeSphere (Ptr
                                                           RawBRepPrimAPI_MakeSphere)
                                   deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrimAPI_MakeSphere) where
        type Raw BRepPrimAPI_MakeSphere = RawBRepPrimAPI_MakeSphere
        get_fptr (BRepPrimAPI_MakeSphere ptr) = ptr
        cast_fptr_to_obj = BRepPrimAPI_MakeSphere
