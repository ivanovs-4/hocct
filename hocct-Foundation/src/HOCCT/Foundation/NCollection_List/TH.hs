{-# LANGUAGE TemplateHaskell #-}
module HOCCT.Foundation.NCollection_List.TH where
import Data.Char
import Data.List
import Data.Monoid
import Foreign.C.Types
import Foreign.Ptr
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import FFICXX.Runtime.CodeGen.Cxx
import FFICXX.Runtime.TH
import HOCCT.Foundation.NCollection_List.Template

t_newNCollection_List :: Type -> String -> Q Exp
t_newNCollection_List typ1 suffix
  = mkTFunc (typ1, suffix, \ n -> "NCollection_List_new" <> n, tyf)
  where tyf _
          = let theItemType = pure typ1 in
              [t| IO (NCollection_List $( theItemType )) |]

t_nCollection_List_Append :: Type -> String -> Q Exp
t_nCollection_List_Append typ1 suffix
  = mkTFunc
      (typ1, suffix,
       \ n -> "NCollection_List_nCollection_List_Append" <> n, tyf)
  where tyf _
          = let theItemType = pure typ1 in
              [t|
                NCollection_List $( theItemType ) ->
                  $( theItemType ) -> IO $( theItemType )
                |]

genNCollection_ListInstanceFor ::
                               IsCPrimitive -> (Q Type, TemplateParamInfo) -> Q [Dec]
genNCollection_ListInstanceFor isCprim (qtyp1, param1)
  = do let params = map tpinfoSuffix [param1]
       let suffix = concatMap (\ x -> "_" ++ tpinfoSuffix x) [param1]
       callmod_ <- fmap loc_module location
       let callmod = dot2_ callmod_
       typ1 <- qtyp1
       f1 <- mkNew "newNCollection_List" t_newNCollection_List typ1 suffix
       f2 <- mkMember "nCollection_List_Append" t_nCollection_List_Append
               typ1
               suffix
       addModFinalizer
         (addForeignSource LangCxx
            ("\n#include \"MacroPatternMatch.h\"\n\n\n#include \"NCollection_List.hxx\"\n\n\n#define NCollection_List_new(callmod, theItemType) \\\nextern \"C\" {\\\nvoid* NCollection_List_new_##theItemType (  );}\\\ninline void* NCollection_List_new_##theItemType (  ) {\\\nreturn static_cast<void*>(new NCollection_List<theItemType>());\\\n}\\\nauto a_##callmod##_NCollection_List_new_##theItemType=NCollection_List_new_##theItemType;\n\n\n#define NCollection_List_nCollection_List_Append(callmod, theItemType) \\\nextern \"C\" {\\\ntheItemType##_p NCollection_List_nCollection_List_Append_##theItemType ( void* p, theItemType##_p theItem );}\\\ninline theItemType##_p NCollection_List_nCollection_List_Append_##theItemType ( void* p, theItemType##_p theItem ) {\\\nreturn from_nonconst_to_nonconst<theItemType##_t, theItemType>((theItemType*)&((static_cast<NCollection_List<theItemType>*>(p))->Append(*(from_nonconst_to_nonconst<theItemType, theItemType##_t>(theItem)))));\\\n}\\\nauto a_##callmod##_NCollection_List_nCollection_List_Append_##theItemType=NCollection_List_nCollection_List_Append_##theItemType;\n\n\n#define NCollection_List_new_s(callmod, theItemType) \\\nextern \"C\" {\\\nvoid* NCollection_List_new_##theItemType (  );}\\\ninline void* NCollection_List_new_##theItemType (  ) {\\\nreturn static_cast<void*>(new NCollection_List<theItemType>());\\\n}\\\nauto a_##callmod##_NCollection_List_new_##theItemType=NCollection_List_new_##theItemType;\n\n\n#define NCollection_List_nCollection_List_Append_s(callmod, theItemType) \\\nextern \"C\" {\\\ntheItemType NCollection_List_nCollection_List_Append_##theItemType ( void* p, theItemType theItem );}\\\ninline theItemType NCollection_List_nCollection_List_Append_##theItemType ( void* p, theItemType theItem ) {\\\nreturn (static_cast<NCollection_List<theItemType>*>(p))->Append(theItem);\\\n}\\\nauto a_##callmod##_NCollection_List_nCollection_List_Append_##theItemType=NCollection_List_nCollection_List_Append_##theItemType;\n\n\n#define NCollection_List_instance(callmod, theItemType) \\\nNCollection_List_new(callmod, theItemType)\\\nNCollection_List_nCollection_List_Append(callmod, theItemType)\n\n\n#define NCollection_List_instance_s(callmod, theItemType) \\\nNCollection_List_new_s(callmod, theItemType)\\\nNCollection_List_nCollection_List_Append_s(callmod, theItemType)\n\n"
               ++
               let headers = concatMap tpinfoCxxHeaders [param1]
                   f x = renderCMacro (Include x)
                 in concatMap f headers
                 ++
                 let nss = concatMap tpinfoCxxNamespaces [param1]
                     f x = renderCStmt (UsingNamespace x)
                   in concatMap f nss
                   ++
                   "NCollection_List_instance" ++
                     (case isCprim of
                          CPrim -> "_s"
                          NonCPrim -> "")
                       ++ "(" ++ intercalate ", " (callmod : params) ++ ")\n"))
       let lst = [f1, f2]
       pure [mkInstance [] (AppT (con "INCollection_List") typ1) lst]
