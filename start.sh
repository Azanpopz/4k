if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Azanpopz/4k.git /4k
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /4k
fi
cd /4k
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
