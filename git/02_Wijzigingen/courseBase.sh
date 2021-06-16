mkdir -p /root/myproject
cd /root/myproject

git init

git config --global user.name "Pietje Puk"
git config --global user.email pietje@puk.com

git add committed.py

git commit -m "Eerste wijziging"

echo "print('Nieuwe versie')" > committed.py
