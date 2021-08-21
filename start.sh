# 初始化rclone.conf配置
cat << EOF > /etc/rclone.conf
$rclone
EOF
# 启动rclone
exec /usr/bin/rclone serve webdav ${parameter}
