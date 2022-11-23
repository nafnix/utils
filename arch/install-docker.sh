echo "------------------------------------------------------------------"
echo "安装 docker 和 docker-compose"
sudo pacman -S docker docker-compose

echo "------------------------------------------------------------------"
echo "设置 docker 开机自启"
sudo systemctl enable --now docker

echo "------------------------------------------------------------------"
echo "授予非 root 用户使用 docker 权限"
sudo chmod 666 /var/run/docker.sock

echo "------------------------------------------------------------------"
echo "设置 docker 镜像"
echo {"registry-mirrors": ["https://docker.mirrors.sjtug.sjtu.edu.cn"]} > /etc/docker/daemon.json

echo "------------------------------------------------------------------"
echo "完成"
