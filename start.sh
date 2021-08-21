# 初始化rclone.conf配置
rclone config file
chmod 777 /.rclone.conf
cat << EOF > /.rclone.conf
$rclone
EOF
# 启动rclone
exec rclone serve webdav ${parameter}
