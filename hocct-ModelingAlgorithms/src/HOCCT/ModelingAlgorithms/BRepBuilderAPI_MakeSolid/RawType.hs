{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeSolid.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_MakeSolid

newtype BRepBuilderAPI_MakeSolid = BRepBuilderAPI_MakeSolid (Ptr
                                                               RawBRepBuilderAPI_MakeSolid)
                                     deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_MakeSolid) where
        type Raw BRepBuilderAPI_MakeSolid = RawBRepBuilderAPI_MakeSolid
        get_fptr (BRepBuilderAPI_MakeSolid ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_MakeSolid
