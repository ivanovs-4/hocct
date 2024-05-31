{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepPrimAPI_MakeSweep.RawType
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_MakeShape.Interface

class (IBRepBuilderAPI_MakeShape a) => IBRepPrimAPI_MakeSweep a
      where

upcastBRepPrimAPI_MakeSweep ::
                            forall a . (FPtr a, IBRepPrimAPI_MakeSweep a) =>
                              a -> BRepPrimAPI_MakeSweep
upcastBRepPrimAPI_MakeSweep h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepPrimAPI_MakeSweep = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepPrimAPI_MakeSweep ::
                              forall a . (FPtr a, IBRepPrimAPI_MakeSweep a) =>
                                BRepPrimAPI_MakeSweep -> a
downcastBRepPrimAPI_MakeSweep h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
