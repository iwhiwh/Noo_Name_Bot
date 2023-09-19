if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iwhiwh/Noo_Name_Bot /Noo_Name_Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Noo_Name_Bot
fi
cd /Noo_Name_Bot
pip3 install -U -r requirements.txt
echo "Starting Bot....✅"
python3 bot.py
