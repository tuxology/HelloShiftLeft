sl run -- java -jar target/hello-shiftleft-0.0.5.jar -Dshiftleft.sec.xxe=EXTERNAL -Dshiftleft.sec.mode=BLOCK &
sleep 30
for i in {1..100}
do
    curl http://localhost:8081/customers/1
    curl http://localhost:8081/customers/
    curl http://localhost:8081/customers/2
    curl http://localhost:8081/customers/
    curl http://localhost:8081/customers/1
    curl http://localhost:8081/customers/1
    curl http://localhost:8081/customers/1
    curl http://localhost:8081/customers/1
    sleep 30
done
sleep 10
for i in {1..100}
do
    curl http://localhost:8081/account
    curl http://localhost:8081/account/1
    curl http://localhost:8081/account/2
    curl http://localhost:8081/account/3
    curl http://localhost:8081/account/4
    curl http://localhost:8081/account/5
    curl http://localhost:8081/account/1
    sleep 30
done
sleep 5
for i in {1..50}
do
    curl http://localhost:8081/patients
    sleep 30
done
sleep 10
sudo apt update
sudo apt install -y python-pip python-dev
pip install requests
for i in {1..25}
do
    python2 exploits/filewriteexploit.py http://localhost:8081/saveSettings testfile 3vilhax0r
    sleep 30
done
sleep 5
for i in {1..25}
do
    python2 exploits/JavaSerializationExploit/src/main/java/exploit.py
done
sleep 20
