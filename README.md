# ansible_docker

Run a docker Ubuntu image and test / run ansible scripts against the container.

```
DOCKER_CONTAINER_NAME="ubuntu_container"
docker run -it --name ubuntu_container ubuntu:bionic bash
unminimize
<ctr-d>

docker container list
docker container list -a

docker commit ubuntu_container ubuntu:unminimize

docker images
docker container rm ubuntu_container
docker container list -a

docker run -p 8080:80 --name ubuntu_container  -td ubuntu:unminimize

ansible-playbook -i inventory.yml playbook.yml --extra-var="secrets_file=../../../eduid-demonstrator-environment/secrets.yml"
```
Got to [http://localhost:8080](http://localhost:8080/)

Optional specify tags to limit the playbook roles:
```
ansible-playbook -i inventory.yml playbook.yml --tags="mongodb" --extra-var="secrets_file=../../../eduid-demonstrator-environment/secrets.yml"
```

----
Wanted to do something with https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#non-ssh-connection-types....
