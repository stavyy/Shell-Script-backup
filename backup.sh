echo "enter directory name to backup"
read dirname
echo "enterd directory name is $dirname"

found=`find . -type d -name "$dirname" -print`
if [ -z "$found" ]; then
echo "Notfound, So we create the directory here"
mkdir $dirname
else
echo "Found the directory"
fi

FILES=*.txt
for file in $FILES
do
found=`find . -type f -name "$dirname/$file" -print`
if [ -z "$found" ]; then
echo "Notfound, Backingup $file file... here"
cp $file $dirname/
echo "Backedup $file file..."
else
echo "Found the file"
if [ "$file" -nt "$dirname/$file" ]
then
printf '%s\n' "$file is newer than backedup file"
echo "Backingup $file file... here"
cp $file $dirname/
echo "Backedup $file file..."
fi
fi
   
done