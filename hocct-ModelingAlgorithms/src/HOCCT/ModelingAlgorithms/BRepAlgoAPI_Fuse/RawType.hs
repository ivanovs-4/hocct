{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepAlgoAPI_Fuse.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepAlgoAPI_Fuse

newtype BRepAlgoAPI_Fuse = BRepAlgoAPI_Fuse (Ptr
                                               RawBRepAlgoAPI_Fuse)
                             deriving (Eq, Ord, Show)

instance () => FPtr (BRepAlgoAPI_Fuse) where
        type Raw BRepAlgoAPI_Fuse = RawBRepAlgoAPI_Fuse
        get_fptr (BRepAlgoAPI_Fuse ptr) = ptr
        cast_fptr_to_obj = BRepAlgoAPI_Fuse
