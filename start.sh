if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PROFESSOR-9/TonyStark-Robot.git /TonyStark-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TonyStark-Robot
fi
cd /TonyStark-Robot
pip3 install -U -r requirements.txt
echo "Starting TonyStark Robot...."
python3 bot.py
