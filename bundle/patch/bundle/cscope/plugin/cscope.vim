diff --git a/plugin/cscope.vim b/plugin/cscope.vim
index a945052..1d1494c 100644
--- a/plugin/cscope.vim
+++ b/plugin/cscope.vim
@@ -30,7 +30,9 @@ if !exists('g:cscope_cmd')
   endif
 endif
 
-set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-
+if ! has('nvim')
+   set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-
+endif
 
 function! s:ClearDBs()
   cs kill -1
