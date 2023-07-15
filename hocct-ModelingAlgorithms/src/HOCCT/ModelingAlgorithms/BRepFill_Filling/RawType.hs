{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepFill_Filling.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepFill_Filling

newtype BRepFill_Filling = BRepFill_Filling (Ptr
                                               RawBRepFill_Filling)
                             deriving (Eq, Ord, Show)

instance () => FPtr (BRepFill_Filling) where
        type Raw BRepFill_Filling = RawBRepFill_Filling
        get_fptr (BRepFill_Filling ptr) = ptr
        cast_fptr_to_obj = BRepFill_Filling
