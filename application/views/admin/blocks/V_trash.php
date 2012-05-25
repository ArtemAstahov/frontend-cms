<h3 class="center">Корзина</h3>
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>ID</th>
            <th width="400">Страница</th>
            <th>Создатель</th>
            <th>Дата создания</th>
            <th width="50">Восстановить</th>
            <th width="50">Удалить</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>2</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>3</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>4</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>5</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>6</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>7</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>8</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>9</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
        <tr>
            <td>10</td>
            <td><a href="#">Название страницы...</a></td>
            <td>Имя пользователя...</td>
            <td>Дата создания...</td>
            <td><a href="#"><?=HTML::image('assets/img/published.png');?></a></td>
            <td><a href="#"><?=HTML::image('assets/img/delete.png');?></a></td>
        </tr>
    </tbody>
</table>
<div class="row">
    <div class="span4">
        <div class="control-group">
            <label class="control-label" for="select1">Сортировать по:</label>
            <div class="controls">
                <select id="select1" class="input-medium">
                    <option>ID</option>
                    <option>Email</option>
                    <option>Роле</option>
                    <option>Дате регистрации</option>
                </select>
            </div>
        </div>
    </div>
    <div class="span4">
        <div class="control-group">
            <label class="control-label" for="select2">Выводить по:</label>
            <div class="controls">
                <select id="select2" class="input-medium">
                    <option>10</option>
                    <option>20</option>
                    <option>30</option>
                    <option>40</option>
                    <option>50</option>
                </select>
            </div>
        </div>
    </div>
    <div class="span3 savepages">
        <button class="btn btn-success">Очистить корзину</button>
    </div>
</div>
<div class="row">
    <div class="span12">
        <div class="pagination">
            <ul>
            <li><a href="#">Предыдущая</a></li>
            <li class="active">
                <a href="#">1</a>
            </li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">Следующая</a></li>
            </ul>
        </div>
    </div>
</div>