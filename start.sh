# 初始化rclone.conf配置
mkdir -p /.config && cd /.config
mkdir -p /rclone && cd /rclone
cat << EOF > /rclone.conf
$rclone
EOF
# 启动rclone
exec rclone serve webdav ${parameter}
