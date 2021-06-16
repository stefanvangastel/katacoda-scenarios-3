# Setup local env
mkdir -p /root/myproject
cd /root/myproject

# Create new remote
git init --bare /remote/myproject.git

# --- Pietje

# Setup Git
git init

git config --global user.name "Pietje Puk"
git config --global user.email pietje@puk.com

# Add remote
git remote add origin /remote/myproject.git

# Make first commit
git add .
git commit -m "Eerste bestand" .

# Push it
git push -u origin master

# ---- Uil

# Now copy the repo and make a change as a different user
cp -pfr /root/myproject /root/myproject2
cd /root/myproject2

git config --global user.name "Meneer de Uil"
git config --global user.email meneer@uil.com

# Change a line
echo "print('Deze regel is beter!)'" > committed.py
git commit -m "Nieuwe Uil feature" .

# Push this change
git push -u origin master

# --- Pietje

cd /root/myproject

git config --global user.name "Pietje Puk"
git config --global user.email pietje@puk.com

# Change a line
echo "print('Hello n3rds!)'" > committed.py
git commit -m "Nieuw Pietje feature" .
