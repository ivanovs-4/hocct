{-# LANGUAGE ForeignFunctionInterface, TypeFamilies,
  MultiParamTypeClasses, FlexibleInstances, TypeSynonymInstances,
  EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}
module HOCCT.ModelingAlgorithms.BRepBuilderAPI_Command.RawType
       where
import Foreign.Ptr
import FFICXX.Runtime.Cast

data RawBRepBuilderAPI_Command

newtype BRepBuilderAPI_Command = BRepBuilderAPI_Command (Ptr
                                                           RawBRepBuilderAPI_Command)
                                   deriving (Eq, Ord, Show)

instance () => FPtr (BRepBuilderAPI_Command) where
        type Raw BRepBuilderAPI_Command = RawBRepBuilderAPI_Command
        get_fptr (BRepBuilderAPI_Command ptr) = ptr
        cast_fptr_to_obj = BRepBuilderAPI_Command
