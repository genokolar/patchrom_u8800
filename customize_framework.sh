if [ $2 = "out/framework" ]
then 
mkdir $1/../miui
mkdir $1/../miui/smali
mv $2/smali/miui $1/../miui/smali/miui
cp $2/apktool.yml $1/../miui

../tools/apktool b $1/../miui
cp $1/../miui/dist/framework.jar $1/../miui.jar
cp $1/../miui/dist/framework.jar $1/../ZIP/system/framework/miui.jar
fi
