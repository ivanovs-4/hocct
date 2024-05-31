{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeTorus.RawType
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeOneAxis.Interface

class (IBRepPrimAPI_MakeOneAxis a) => IBRepPrimAPI_MakeTorus a
      where

upcastBRepPrimAPI_MakeTorus ::
                            forall a . (FPtr a, IBRepPrimAPI_MakeTorus a) =>
                              a -> BRepPrimAPI_MakeTorus
upcastBRepPrimAPI_MakeTorus h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeTorus = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeTorus ::
                              forall a . (FPtr a, IBRepPrimAPI_MakeTorus a) =>
                                BRepPrimAPI_MakeTorus -> a
downcastBRepPrimAPI_MakeTorus h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
