{-# LANGUAGE EmptyDataDecls, ExistentialQuantification,
  FlexibleContexts, FlexibleInstances, ForeignFunctionInterface,
  MultiParamTypeClasses, ScopedTypeVariables, TypeFamilies,
  TypeSynonymInstances #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.Interface
       where
import Data.Word
import Data.Int
import Foreign.C
import Foreign.Ptr
import FFICXX.Runtime.Cast
import HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType

class () => IBRepBuilderAPI_Command a where

upcastBRepBuilderAPI_Command ::
                             forall a . (FPtr a, IBRepBuilderAPI_Command a) =>
                               a -> BRepBuilderAPI_Command
upcastBRepBuilderAPI_Command h
  = let fh = get_fptr h
        fh2 :: Ptr RawBRepBuilderAPI_Command = castPtr fh
      in cast_fptr_to_obj fh2

downcastBRepBuilderAPI_Command ::
                               forall a . (FPtr a, IBRepBuilderAPI_Command a) =>
                                 BRepBuilderAPI_Command -> a
downcastBRepBuilderAPI_Command h
  = let fh = get_fptr h
        fh2 = castPtr fh
      in cast_fptr_to_obj fh2
