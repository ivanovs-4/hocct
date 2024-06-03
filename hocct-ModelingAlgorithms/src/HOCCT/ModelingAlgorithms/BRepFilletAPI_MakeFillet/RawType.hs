{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeFillet.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepFilletAPI_MakeFillet

newtype BRepFilletAPI_MakeFillet = BRepFilletAPI_MakeFillet (Ptr
                                                               RawBRepFilletAPI_MakeFillet)
                                     deriving (Eq, Ord, Show)

instance () => FPtr (BRepFilletAPI_MakeFillet) where
        type Raw BRepFilletAPI_MakeFillet = RawBRepFilletAPI_MakeFillet
        get_fptr (BRepFilletAPI_MakeFillet ptr) = ptr
        cast_fptr_to_obj = BRepFilletAPI_MakeFillet
