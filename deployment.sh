spring_pid=`ps -ef | grep demo | grep -v grep | awk -F " " '{print $2}'`

if [ $spring_pid ]
then
   echo "실행중인 백엔드 프로세스 중료하는 중..."
   kill -9 $spring_pid
else
   echo "실행중인 백엔드 프로세스가 없습니다."
 fi

 echo "스프링 프로젝트 실행 중.."
 nohub java -jar /home/ubuntu/demo-0.0.1-SNAPSHOT.jar &