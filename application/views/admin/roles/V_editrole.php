<form id="edititem" action="" method="post">
<div class="row">
    <h3>Изменить роль</h3>
    <div class="span11">
        <div class="span5">
            <div class="control-group">
                <label class="control-label" for="description">Название роли:</label>
                <div class="controls">
                    <input type="text" id="description" name="name" class="input-large" value="<?=$role->name;?>">
                </div>
            </div>
        </div>
        <div class="span5">
            <div class="control-group">
                <label class="control-label" for="description">Описание роли:</label>
                <div class="controls">
                    <input type="text" id="description" name="description" class="input-large" value="<?=$role->description;?>">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="span11 managerole">
        <h3>Права на управление</h3>
        <div class="span5">
            <div class="control-group">
                <label class="control-label">Управление страницами:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="pages" <?=$role->pages == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="pages" <?=$role->pages == 0 ? 'checked' : '';?>>Нет
                </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Управление каталогами:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="cats" <?=$role->cats == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="cats" <?=$role->pages == 0 ? 'checked' : '';?>>Нет
                </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Управление пользователями:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="users" <?=$role->users == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="users" <?=$role->users == 0 ? 'checked' : '';?>>Нет
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Управление модулями:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="mods" <?=$role->mods == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="mods" <?=$role->mods == 0 ? 'checked' : '';?>>Нет
                    </label>
                </div>
            </div>
        </div>
        <div class="span5">
            <div class="control-group">
                <label class="control-label">Управление письмами:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="mails" <?=$role->mails == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="mails" <?=$role->mails == 0 ? 'checked' : '';?>>Нет
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Доступ к статистике:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="stats" <?=$role->stats == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="stats" <?=$role->stats == 0 ? 'checked' : '';?>>Нет
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Доступ к настройкам:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="opts" <?=$role->opts == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="opts" <?=$role->opts == 0 ? 'checked' : '';?>>Нет
                    </label>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Доступ к корзине:</label>
                <div class="controls">
                    <label class="radio inline">
                        <input type="radio" value="1" name="trash" <?=$role->trash == 1 ? 'checked' : '';?>>Да
                    </label>
                    <label class="radio inline">
                        <input type="radio" value="0" name="trash" <?=$role->trash == 0 ? 'checked' : '';?>>Нет
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="span5 offset6">
        <div class="control-group">
            <div class="controls">
                <input type="hidden" name="id" value="<?=$role->id;?>">
                <a class="btn btn-success addrole btncheck" href="#" onclick="req.edit('roles');">Сохранить</a>
            </div>
        </div>
    </div>
</div>
</form>
<script>validPages('#edititem', 'req.edit("roles");');</script>