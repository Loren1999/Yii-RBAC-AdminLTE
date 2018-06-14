# 安装及配置
> * 将项目克隆或下载到本地后解压到站点目录下
> * 在项目根目录下执行init 输入 0 选择 yes 此操作会生成yii基础配置文件
> * 修改common目录下config/main-local.php文件中db项的数据库链接，将其中数据库配置改为自己的配置信息，项目中使用数据库为mysql
> * 假定已将composer全局安装，在项目根目录下执行composer install，进行依赖安装
> * 最后将data-backup/yii2_advanced_for_mysql.sql导入到数据库中即可，此操作将会自动创建名为yii2_advanced的数据库
> * 配置好Apache和本地HOSTS文件后访问http://backend.test/site/login

# 数据库及初始信息
> * /data-backup/yii2_advanced_for_mysql.sql创建并导入
> * 注册入口http://frontend.test/index.php?r=site%2Fsignup
> * 登录入口http://backend.test/site/login
> * 初始用户为admin/123456

# apache 虚拟主机配置:
```apacheconfig
<VirtualHost *:80>
    ServerName frontend.test
    DocumentRoot "<项目路径>/frontend/web/"
    
    <Directory "<项目路径>/frontend/web/">
        # use mod_rewrite for pretty URL support
        RewriteEngine on
        # If a directory or a file exists, use the request directly
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteCond %{REQUEST_FILENAME} !-d
        # Otherwise forward the request to index.php
        RewriteRule . index.php

        # use index.php as index file
        DirectoryIndex index.php

        # ...other settings...
    </Directory>
</VirtualHost>

<VirtualHost *:80>
    ServerName backend.test
    DocumentRoot "<项目路径>/backend/web/"
    
    <Directory "<项目路径>/backend/web/">
        # use mod_rewrite for pretty URL support
        RewriteEngine on
        # If a directory or a file exists, use the request directly
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteCond %{REQUEST_FILENAME} !-d
        # Otherwise forward the request to index.php
        RewriteRule . index.php

        # use index.php as index file
        DirectoryIndex index.php

        # ...other settings...
    </Directory>
</VirtualHost>
```

# HOST：
> * 将以下地址 <br />
    127.0.0.1   frontend.test  
    127.0.0.1   backend.test  
> * 添加到 C:\WINDOWS\System32\drivers\etc 的HOSTS文件末尾