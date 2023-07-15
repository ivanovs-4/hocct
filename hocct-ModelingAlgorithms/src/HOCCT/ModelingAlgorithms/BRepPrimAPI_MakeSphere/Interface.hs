{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSphere.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface

class (IBRepPrimAPI_MakeOneAxis a) => IBRepPrimAPI_MakeSphere a
      where

upcastBRepPrimAPI_MakeSphere ::
                             forall a . (FPtr a, IBRepPrimAPI_MakeSphere a) =>
                               a -> BRepPrimAPI_MakeSphere
upcastBRepPrimAPI_MakeSphere h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeSphere = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeSphere ::
                               forall a . (FPtr a, IBRepPrimAPI_MakeSphere a) =>
                                 BRepPrimAPI_MakeSphere -> a
downcastBRepPrimAPI_MakeSphere h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
