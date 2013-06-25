for resource in deadbeef devtools gpicview ldm-gtk-builder-greeter lxadmin lxappearance lxappearance-obconf lxde lxde-common lxde-common-qt lxde-icon-theme lxdm lximage-qt lxinput lxinput-qt lxkb_config lxlauncher lxmenu-data lxmusic lxpanel lxpanel-plugins lxpanel-qt lxpanel-xmms2 lxpanel2 lxpolkit lxrandr lxrandr-qt lxscreenshot lxsession lxsession-edit lxshortcut lxsysmon lxtask lxterminal menu-cache obconf-qt; do
  echo "$resource/po/$resource.pot"
  tx set --auto-local -r $resource "/$resource.po" \
    --source-language=en \
    --source-file "$resource/po/$resource.pot" --execute
done