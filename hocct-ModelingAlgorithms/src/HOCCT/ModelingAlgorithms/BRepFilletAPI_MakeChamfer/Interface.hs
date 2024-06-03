{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepFilletAPI_MakeChamfer.RawType
import HOCCT.ModelingAlgorithms.BRepFilletAPI_LocalOperation.Interface

class (IBRepFilletAPI_LocalOperation a) =>
      IBRepFilletAPI_MakeChamfer a where

upcastBRepFilletAPI_MakeChamfer ::
                                forall a . (FPtr a, IBRepFilletAPI_MakeChamfer a) =>
                                  a -> BRepFilletAPI_MakeChamfer
upcastBRepFilletAPI_MakeChamfer h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepFilletAPI_MakeChamfer = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepFilletAPI_MakeChamfer ::
                                  forall a . (FPtr a, IBRepFilletAPI_MakeChamfer a) =>
                                    BRepFilletAPI_MakeChamfer -> a
downcastBRepFilletAPI_MakeChamfer h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
