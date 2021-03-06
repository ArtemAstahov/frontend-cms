<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Page extends Controller_Site_Main {

    public function before()
    {
        $status = Kohana::$config->load('site.status');
        if ($status == 0) HTTP::redirect('offline');
        return parent::before();
    }

    // Вид страницы
    public function action_index()
    {
        // Если запрошен аяксом
        if ($this->request->is_ajax())
        {
            // Устанавливаем заголовки json-ответа
            $this->response->headers('Content-Type', 'application/json');

            $pagealias = $this->request->param('pagealias');

            $page = ORM::factory('Page')
                ->where('alias', '=', $pagealias)
                ->and_where('status', '=', '1')
                ->find();

            // Если страница не найдена, выдаем ошибку
            if (!$page->loaded())
            {
               throw new Kohana_HTTP_Exception_404;
            }

            $page_array['id'] = $page->id;
            $page_array['pagename'] = $page->pagename;
            $page_array['date'] = $page->date;
            $page_array['alias'] = $page->alias;
            $page_array['catalog'] = $page->catalogs->catname;
            $page_array['author'] = $page->users->username;
            $page_array['content'] = $page->content;
            $page_array['image'] = $page->image;
            $page_array['link'] = $page->link;

            echo parent::json_encode_cyr($page_array);
        }
        else
        {
            // Выбираем страницу из БД согласно алиасу
            $pagealias = $this->request->param('pagealias');

            $page = ORM::factory('Page')
                ->where('alias', '=', $pagealias)
                ->and_where('status', '=', '1')
                ->find();

            // Выбираем все настройки
            foreach (Kohana::$config->load('site') as $key => $value)
            {
               $options[$key] = Kohana::$config->load('site.' . $key);
            }

            $count_pages = ORM::factory('Page')->find_all()->count();

            if ( ! empty($page->metadesc))
                $options['description'] = $page->metadesc;

            if ( ! empty($page->metakeywords))
                $options['keywords'] = $page->metakeywords;

            // Подключаем профайлер
            if ($options['debug'] == 1) $profiler = View::factory('profiler/stats');

            $main = View::factory('site/index')
                    ->bind('options', $options)
                    ->bind('profiler', $profiler)
                    ->bind('count_pages', $count_pages);

            $this->response->body($main);
        }
    }
}

