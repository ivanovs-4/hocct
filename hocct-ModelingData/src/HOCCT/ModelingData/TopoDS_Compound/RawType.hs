{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Compound.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Compound

newtype TopoDS_Compound = TopoDS_Compound (Ptr RawTopoDS_Compound)
                            deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Compound) where
        type Raw TopoDS_Compound = RawTopoDS_Compound
        get_fptr (TopoDS_Compound ptr) = ptr
        cast_fptr_to_obj = TopoDS_Compound
