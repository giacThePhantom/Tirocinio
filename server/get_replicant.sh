#!/bin/sh

rep_root_dir="/GROUPS/sharedRL/tirocinanti/giacomo/output/alignment/"

case $1 in
	-p) ls -R $rep_root_dir | awk '/:$/&&f{s=$0;f=0}/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}NF&&f{ print s"/"$0 }' ;;
	-n) ls -R $rep_root_dir | awk '/:$/&&f{s=$0;f=0}/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}NF&&f{ print s"/"$0 }' | sed "s@$rep_root_dir@@g ; s@\/@_@g ; s@^@$rep_root_dir@g " ;;
	-*) echo "Unrecognized option" ;;
	*) echo "Program usage:\n\t-p\tto get full path\n\t-n\tto get standard name\n\t-m <dir> to move all the file there with standard names" ;;
esac
