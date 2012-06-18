<!--Главный файл админки-->
<!DOCTYPE html>
<html>
<head>
    <!--Мета-теги-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content=“no-index,no-follow”>
    <title>Администраторский раздел</title>

    <!--Стили-->
    <link rel="stylesheet" type="text/css" href="<?=URL::base();?>assets/css/jquery-ui-1.8.16.custom.css">
    <link rel="stylesheet" type="text/css" href="<?=URL::base();?>assets/css/bootstrap.css">
    <link rel="stylesheet/less" type="text/css" href="<?=URL::base();?>assets/css/styles.less">

    <!--Передаем переменные из php в JS-->
    <script>
        var ipadress = '<?=$_SERVER['REMOTE_ADDR'];?>';
        var email = '<?=$email;?>';
        var sitename = '<?=$sitename;?>';
    </script>

    <!--Скрипты-->
    <script src="<?=URL::base();?>assets/js/less-1.3.0.js"></script>
    <script src="<?=URL::base();?>assets/js/jquery-1.7.2.js"></script>
    <script src="<?=URL::base();?>assets/js/jquery-ui.js"></script>
    <script src="<?=URL::base();?>assets/js/bootstrap.js"></script>
    <script src="<?=URL::base();?>assets/js/modernizr-2.5.3.js"></script>
    <script src="<?=URL::base();?>assets/js/underscore.js"></script>
    <script src="<?=URL::base();?>assets/js/backbone.js"></script>
    <script src="<?=URL::base();?>assets/js/json2.js"></script>
    <script src="<?=URL::base();?>assets/js/admin.js"></script>

    <!--Фавикон-->
    <link rel="shortcut icon" type="image/x-icon" href="<?=URL::base();?>assets/img/favicon.ico">
</head>
<body>
    <div class="row container">
        <div class="header">
            <div class="row one">
                <div class="span12 top">
                   <p>Название сайта: <strong class="sitename">{{sitename}}</strong></p>
                   <p>Ваш IP адрес: <strong>{{ipadress}}</strong></p>
                   <p>Здравствуйте: <strong>{{email}}</strong>
                      <a href="<?=URL::site('/admin/auth/logout'); ?>" title="Выйти">
                          <img src="<?=URL::base();?>assets/img/delete.png" alt="">
                      </a>
                   </p>
                </div>
            </div>
            <div class="row two">
                <div class="span3">
                    <h1 class="logo">Front-end CMS</h1>
                </div>
                <div class="span8">
                    <ul class="menu">
                        <li><a href="#home" onclick="req.index();">Главная</a></li>
                        <li><a href="#options" onclick="req.options();">Настройки</a></li>
                        <li><a href="#pages" onclick="req.pages();">Страницы</a></li>
                        <li><a href="#catalogs" onclick="req.catalogs();">Каталоги</a></li>
                        <li><a href="#users" onclick="req.users();">Пользователи</a></li>
                        <li><a href="#modules" onclick="req.modules();">Модули</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="hint span12">
                <h3>Заголовок подсказки</h3>
                <p>Текст подсказки</p>
                <span class="close" onclick="$('.hint').hide();">X</span>
            </div>
        </div>
        <div class="row maintools">
            <div class="span8 offset3">
                <ul class="tools">
                    <li>
                        <a href="#addpage" onclick="req.addpage();">
                            <img src="<?=URL::base();?>assets/img/add.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#addcatalog" onclick="req.addcatalog();">
                            <img src="<?=URL::base();?>assets/img/addcat.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#email" onclick="req.sendemail();">
                            <img src="<?=URL::base();?>assets/img/email.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#adduser" onclick="req.adduser();">
                            <img src="<?=URL::base();?>assets/img/user.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#rss" onclick="req.addrss();">
                            <img src="<?=URL::base();?>assets/img/rss.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#stats" onclick="req.stats();">
                            <img src="<?=URL::base();?>assets/img/stats.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#info" onclick="req.info();">
                            <img src="<?=URL::base();?>assets/img/info.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#trash" onclick="req.trash();">
                            <img src="<?=URL::base();?>assets/img/trash.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    <div class="row">
        <div class="span12 main">
            <?php echo $main; ?>
        </div>
    </div>
    <div class="row">
        <div class="span12 footer">
            <p>Front-end CMS based on Kohana Framework v3.2</p>
            <a href="http://kohanaframework.org" class="kohcopy" target="_blank">www.kohanaframework.org</a>
            <p id="copyright">Created for fun :)</p>
            <a href="#" class="helper">
                <img src="<?=URL::base();?>assets/img/help.png" alt="">
            </a>
        </div>
    </div>
</body>
</html>