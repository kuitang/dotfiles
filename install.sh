# X is being replaced with the filename
rm .*.swp
find ~ -name '.*' -type l -mindepth 1 -maxdepth 1 -delete
find . -name '.*' -print0 -mindepth 1 -maxdepth 1 |\
  xargs -0 -I X echo ln -s "$(pwd)/X" "~/X" |\
  sed 's:\./::g' |\
  sh -x

