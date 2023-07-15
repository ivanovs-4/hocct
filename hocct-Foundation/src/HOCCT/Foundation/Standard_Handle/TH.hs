{-# LANGUAGE TemplateHaskell #-}
module HOCCT.Foundation.Standard_Handle.TH where
import Data.Char
import Data.List
import Data.Monoid
import Foreign.C.Types
import Foreign.Ptr
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import FFICXX.Runtime.CodeGen.Cxx
import FFICXX.Runtime.TH
import HOCCT.Foundation.Standard_Handle.Template

genStandard_HandleInstanceFor ::
                              IsCPrimitive -> (Q Type, TemplateParamInfo) -> Q [Dec]
genStandard_HandleInstanceFor isCprim (qtyp1, param1)
  = do let params = map tpinfoSuffix [param1]
       let suffix = concatMap (\ x -> "_" ++ tpinfoSuffix x) [param1]
       callmod_ <- fmap loc_module location
       let callmod = dot2_ callmod_
       typ1 <- qtyp1
       addModFinalizer
         (addForeignSource LangCxx
            ("\n#include \"MacroPatternMatch.h\"\n\n\n#include \"Standard_Handle.hxx\"\n\n\n#define Standard_Handle_instance(callmod, t) \\\n\n\n\n#define Standard_Handle_instance_s(callmod, t) \\\n\n\n"
               ++
               let headers = concatMap tpinfoCxxHeaders [param1]
                   f x = renderCMacro (Include x)
                 in concatMap f headers
                 ++
                 let nss = concatMap tpinfoCxxNamespaces [param1]
                     f x = renderCStmt (UsingNamespace x)
                   in concatMap f nss
                   ++
                   "Standard_Handle_instance" ++
                     (case isCprim of
                          CPrim -> "_s"
                          NonCPrim -> "")
                       ++ "(" ++ intercalate ", " (callmod : params) ++ ")\n"))
       let lst = []
       pure [mkInstance [] (AppT (con "IStandard_Handle") typ1) lst]
