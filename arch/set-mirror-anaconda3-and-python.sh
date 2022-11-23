echo "------------------------------------------------------------------"
echo "设置 Anaconda 镜像"
conda config --add channels https://mirror.sjtu.edu.cn/anaconda/pkgs/free
conda config --add channels https://mirror.sjtu.edu.cn/anaconda/pkgs/main
conda config --add channels https://mirror.sjtu.edu.cn/anaconda/pkgs/mro
conda config --add channels https://mirror.sjtu.edu.cn/anaconda/pkgs/msys2
conda clean -i

conda config --set show_channel_urls yes

echo "------------------------------------------------------------------"
echo "设置 Pypi 镜像"

pip config set global.index-url https://mirror.nju.edu.cn/pypi/web/simple

echo "------------------------------------------------------------------"
echo "完成"
