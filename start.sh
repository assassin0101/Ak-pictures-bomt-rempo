if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Royaldeep1/Akpicturebot /Akpicturebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Akpicturebot
fi
cd /Akpicturebot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
