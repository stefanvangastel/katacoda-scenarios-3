# ---- Uil

# Now copy the repo and make a change as a different user
rm -rf /root/myproject2
cp -pfr /root/myproject /root/myproject2
cd /root/myproject2

git config --global user.name "Meneer de Uil"
git config --global user.email meneer@uil.com

# Change a line
echo "print('Deze regel is beter!)'" > newFile.py
git add .
git commit -m "Nieuw bestand" .

# Push this change
git push -u origin master

# --- Pietje

cd /root/myproject

git config --global user.name "Pietje Puk"
git config --global user.email pietje@puk.com

echo "print('Pietjes wijziging!)'" > committed.py

# Make first commit
git add .
git commit -m "Nieuwe Pietje feature 2" .