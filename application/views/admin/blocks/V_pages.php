<h3>Все страницы</h3>

<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>ID</th>
            <th>Название</th>
            <th>Описание</th>
            <th>Каталог</th>
            <th>Автор</th>
            <th>Дата создания</th>
            <th width="50">Состояние</th>
            <th width="50">Удалить</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($pages as $page) : ?>
            <tr class="pageedit">
                <td><?=$page->id;?></td>
                <td class="pagename"><a href="#"><?=$page->pagename;?></a></td>
                <td class="pagedesc"><?=$page->pagedesc;?></td>
                <td><?=$page->catalogs->name;?></td>
                <td><?=$page->users->name;?></td>
                <td><?=$page->date;?></td>
                <td>
                    <form action="" method="post" id="cngstatus<?=$page->id;?>">
                        <input type="hidden" name="idpage" value="<?=$page->id;?>">
                        <?php if ($page->status == 1) : ?>
                             <a href="#" onclick='req.off(this);'><img src='assets/img/published.png'></a>
                        <? else : ?>
                             <a href="#" onclick='req.on(this);'><img src='assets/img/not-published.png'></a>
                        <? endif; ?>
                    </form>
                </td>
                <td>
                    <form action="" method="post" id="intrash<?=$page->id;?>">
                        <input type="hidden" name="intrash" value="<?=$page->id;?>">
                        <a href="#" onclick="req.intrash(this);"><img src='<?=URL::base()?>assets/img/delete.png'></a>
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<form action="" method="post" id="savepages">
<div class="row">
    <div class="span4">
        <div class="control-group">
            <label class="control-label" for="select1">Сортировать по:</label>
            <div class="controls">
                <select id="select1" name="sortby" class="input-medium">
                    <option value="id">ID</option>
                    <option value="pagename">Названию</option>
                    <option value="author_id">Автору</option>
                    <option value="catalog_id">Каталогу</option>
                    <option value="date">Дате</option>
                </select>
            </div>
        </div>
    </div>
    <div class="span4">
        <div class="control-group">
            <label class="control-label" for="select2">Выводить по:</label>
            <div class="controls">
                <select id="select2" name="limitpages" class="input-medium">
                    <option>5</option>
                    <option>10</option>
                    <option>15</option>
                    <option>20</option>
                    <option>25</option>
                </select>
            </div>
        </div>
    </div>
    <div class="span3 savepages">
        <a class="btn btn-success" onclick="req.sortPages();">Применить настройки</a>
    </div>
</div>
</form>

<div class="row">
    <div class="span12">
        <div class="pagination">
            <ul>
                <?php for ($i=1; $i <= $countpages; $i++ ) : ?>
                <li>
                    <form action="" method="post" id="pagination<?php echo $i; ?>">
                        <input type="hidden" name="offset" id="offset" value="">
                        <input type="hidden" name="limitpages" class="limpages" value="">
                        <a href="#" class="pageN" name="pagination" onclick="req.pagination(this);"><?php echo $i; ?></a>
                    </form>
                </li>
                <? endfor; ?>
            </ul>
        </div>
    </div>
</div>