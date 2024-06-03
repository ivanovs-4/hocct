{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepFilletAPI_MakeChamfer

newtype BRepFilletAPI_MakeChamfer = BRepFilletAPI_MakeChamfer (Ptr
                                                                 RawBRepFilletAPI_MakeChamfer)
                                      deriving (Eq, Ord, Show)

instance () => FPtr (BRepFilletAPI_MakeChamfer) where
        type Raw BRepFilletAPI_MakeChamfer = RawBRepFilletAPI_MakeChamfer
        get_fptr (BRepFilletAPI_MakeChamfer ptr) = ptr
        cast_fptr_to_obj = BRepFilletAPI_MakeChamfer
