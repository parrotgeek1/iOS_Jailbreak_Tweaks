find . -name .DS_Store -delete
rm -rf mod/dist;java -jar ~/Desktop/android/apkediting/apktool_2.0.2.jar b mod; rm -rf mod/build; java -jar ~/Desktop/android/apkediting/sign.jar mod/dist/mod.apk
rm -f mod/dist/mod.apk