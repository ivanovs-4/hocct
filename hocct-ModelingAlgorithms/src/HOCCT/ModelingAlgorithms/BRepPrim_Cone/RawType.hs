{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepPrim_Cone.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepPrim_Cone

newtype BRepPrim_Cone = BRepPrim_Cone (Ptr RawBRepPrim_Cone)
                          deriving (Eq, Ord, Show)

instance () => FPtr (BRepPrim_Cone) where
        type Raw BRepPrim_Cone = RawBRepPrim_Cone
        get_fptr (BRepPrim_Cone ptr) = ptr
        cast_fptr_to_obj = BRepPrim_Cone
