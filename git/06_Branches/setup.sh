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

# Cleanup
cd /root/
rm -rf /root/myproject