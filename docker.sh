#��������
docker build -t="wulinyun/docker-war-demo" .
#�鿴���ؾ���
docker images
#���Ϊ˽�вֿ⾵��
docker tag wulinyun/docker-war-demo harbor.landaudev.com/demo/docker-war-demo:latest
#���͵�˽�о���ֿ⵱��
docker push harbor.landaudev.com/demo/docker-war-demo:latest
#push��PCF
cf push docker-war-demo --docker-image harbor.landaudev.com/demo/docker-war-demo:latest
#ɾ��tag���
#docker rmi -f harbor.landaudev.com/demo/docker-war-demo:latest
#��̨���б���docker����
#sudo docker run   -d -p 8080:8080 wulinyun/docker-war-demo