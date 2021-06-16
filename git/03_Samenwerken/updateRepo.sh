# Make changes as different user
cp -pfr /root/myproject /root/myproject2
cd /root/myproject2

git config --global user.name "Meneer de Uil"
git config --global user.email uil@fabeltjeskrant.com

echo "print('extra regel')" >> committed.py

git add .
git commit -m "Bugfix door Uil" .

git push origin master

# Change it back
git config --global user.name "Pietje Puk"
git config --global user.email pietje@puk.com

cd /root/myproject