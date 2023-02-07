if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/senapatisachi111/THE_SNS /THE_SNS
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THE_SNS
fi
cd /THE_SNS
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
