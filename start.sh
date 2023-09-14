if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iwhiwh/SEND-ALL-FILE-BOT /SEND-ALL-FILE-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SEND-ALL-FILE-BOT
fi
cd /SEND-ALL-FILE-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot....✅"
python3 bot.py
