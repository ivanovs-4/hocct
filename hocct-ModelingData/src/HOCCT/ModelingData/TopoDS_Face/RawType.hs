{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingData.TopoDS_Face.RawType where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawTopoDS_Face

newtype TopoDS_Face = TopoDS_Face (Ptr RawTopoDS_Face)
                        deriving (Eq, Ord, Show)

instance () => FPtr (TopoDS_Face) where
        type Raw TopoDS_Face = RawTopoDS_Face
        get_fptr (TopoDS_Face ptr) = ptr
        cast_fptr_to_obj = TopoDS_Face
