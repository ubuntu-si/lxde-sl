## Push source files
tx push -s --skip
## Pull translated files
tx pull -l sl --force
mkdir -p lxde-locale-sl/usr/share/locale/sl/LC_MESSAGES/
for i in */po/sl.po; do
  arr=(${i/\// })
  echo $arr
  msgfmt -cv $i -o ./lxde-locale-sl/usr/share/locale/sl/LC_MESSAGES/$arr.mo
done