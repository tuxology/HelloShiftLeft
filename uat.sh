sl run -- java -jar target/hello-shiftleft-0.0.5.jar &
sleep 60
curl http://localhost:8081/customers/1
curl http://localhost:8081/customers/
curl http://localhost:8081/customers/2
curl http://localhost:8081/customers/
curl http://localhost:8081/customers/1
curl http://localhost:8081/customers/1
curl http://localhost:8081/customers/1
curl http://localhost:8081/customers/1
sleep 10
curl http://localhost:8081/account
curl http://localhost:8081/account/1
curl http://localhost:8081/account/2
curl http://localhost:8081/account/3
curl http://localhost:8081/account/4
curl http://localhost:8081/account/5
curl http://localhost:8081/account/1
sleep 5
curl http://localhost:8081/patients
sleep 10
sudo easy_install pip
pip install requests
python2 exploits/filewriteexploit.py http://localhost:8081/saveSettings testfile 3vilhax0r
sleep 5
python2 exploits/JavaSerializationExploit/src/main/java/exploit.py
sleep 20