WOLF3D_SHAREWARE="Wolf3D_Shareware" 
WOLF3D_FULL="Wolf3D_Full"
WOLF3D_SOD_SHAREWARE="Wolf3D_SOD_Shareware"
WOLF3D_SOD_FULL="Wolf3D_SOD_Full"

rm -R bin
rm $WOLF3D_SHAREWARE.tar.gz
rm $WOLF3D_FULL.tar.gz
rm $WOLF3D_SOD_SHAREWARE.tar.gz
rm $WOLF3D_SOD_FULL.tar.gz
mkdir -p bin
mkdir -p bin/$WOLF3D_SHAREWARE
mkdir -p bin/$WOLF3D_FULL
mkdir -p bin/$WOLF3D_SOD_SHAREWARE
mkdir -p bin/$WOLF3D_SOD_FULL

cp Wolf3D_Shareware/* bin/$WOLF3D_SHAREWARE && make clean && make VERSION=0 && mv EBOOT.PBP bin/$WOLF3D_SHAREWARE && cd bin && tar -zcvf $WOLF3D_SHAREWARE.tar.gz $WOLF3D_SHAREWARE && mv $WOLF3D_SHAREWARE.tar.gz ../
cd .. && cp Wolf3D_Full/* bin/$WOLF3D_FULL && make clean && make VERSION=1 && mv EBOOT.PBP bin/$WOLF3D_FULL && cd bin && tar -zcvf $WOLF3D_FULL.tar.gz $WOLF3D_FULL && mv $WOLF3D_FULL.tar.gz ../
cd .. && cp Wolf3D_SOD_Shareware/* bin/$WOLF3D_SOD_SHAREWARE && make clean && make VERSION=2 && mv EBOOT.PBP bin/$WOLF3D_SOD_SHAREWARE && cd bin && tar -zcvf $WOLF3D_SOD_SHAREWARE.tar.gz $WOLF3D_SOD_SHAREWARE && mv $WOLF3D_SOD_SHAREWARE.tar.gz ../
cd .. && cp Wolf3D_Full/* bin/$WOLF3D_SOD_FULL && make clean && make VERSION=3 && mv EBOOT.PBP bin/$WOLF3D_SOD_FULL && cd bin && tar -zcvf $WOLF3D_SOD_FULL.tar.gz $WOLF3D_SOD_FULL && mv $WOLF3D_SOD_FULL.tar.gz ../
