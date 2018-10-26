# Yii-RBAC-AdminLTE
> * 整合YiiRBAC权限管理及AdminLTE方便直接进行开发
> * 完整搭建流程请移步 https://blog.csdn.net/a1513049385/article/details/80665192
> * 集成了RBAC权限管理以及基本的菜单配置
> * 后台UI框架集成了AdminLTE
> * 仅需进行简单的配置即可进行自己的项目开发啦~~~o(*￣▽￣*)ブ
> * 项目克隆好后在项目根目录下（admin目录）执行init.bat脚本，输入0选择开发模式，再键入yes确认
> * 在数据库中创建库create database yii2_advanced default charset utf8;
> * 修改本地配置文件<项目根目录>/common/config/main-local.php内容
> * 执行数据库迁移php yii migrate --migrationPath=@mdm/admin/migrations
> * 创建RBAC相关表：建表语句存放在<项目根目录>/vendor/yiisoft/yii2/rbac/migrations/schema-mysql.sql文件中,在建好的库中执行
> * 最后在项目根目录下执行composer install安装依赖即可

![image](https://github.com/Loren1999/Yii-RBAC-AdminLTE/blob/master/admin/image/login.png)
![image](https://github.com/Loren1999/Yii-RBAC-AdminLTE/blob/master/admin/image/default.png)
![image](https://github.com/Loren1999/Yii-RBAC-AdminLTE/blob/master/admin/image/menu-list.png)
![image](https://github.com/Loren1999/Yii-RBAC-AdminLTE/blob/master/admin/image/tree-menu.png)
![image](https://github.com/Loren1999/Yii-RBAC-AdminLTE/blob/master/admin/image/gii.png)
