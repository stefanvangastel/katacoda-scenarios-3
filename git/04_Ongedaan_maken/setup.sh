# Setup local env
cd /root/myproject

# Setup Git
git init

git config --global user.name "Pietje Puk"
git config --global user.email pietje@puk.com

# Make first commit
git add .
git commit -m "Eerste bestand" .

# Commit bugfix
echo "print('Hello n3rds!)'" > committed.py
git commit -m "Bugfix" .

# Add new file
echo "Mooi stukje proza" > README.md
git add .
git commit -m "README toegevoegd" .

# Make local change
echo "def mijnAwesomeFunctie():\n    print('cool!')" >> committed.py

clear