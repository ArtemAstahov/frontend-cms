<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Site_Home extends Controller_Site_Main {

    public function before()
    {
       $status = Kohana::$config->load('site.status');
       if ($status == 0) HTTP::redirect('offline');
       return parent::before();
    }

    public function action_index()
   	{
       // Если запрошен аяксом
       if ($this->request->is_ajax())
       {
           // Устанавливаем заголовки json-ответа
           $this->response->headers('Content-Type', 'application/json');

           // Если кэш включен
           if (Kohana::$config->load('site.cache') === '1')
           {
               if ( ! $pages = Cache::instance()->get('pages'))
               {
                   $pages = ORM::factory('Page')
                       ->where('status', '=', '1')
                       ->order_by('id')
                       ->find_all()
                       ->as_array();
                   Cache::instance()->set('pages', $pages, Date::MINUTE * 5);
               }
           }
           else
           {
               $pages = ORM::factory('Page')
                   ->where('status', '=', '1')
                   ->order_by('id')
                   ->find_all()
                   ->as_array();
           }

           foreach ($pages as $page)
           {
               $pages_array['pagename'] = $page->pagename;
               $pages_array['date'] = $page->date;
               $pages_array['alias'] = $page->alias;
               $pages_array['catalog_alias'] = $page->catalogs->alias;
               $pages_array['catalog'] = $page->catalogs->catname;
               $pages_array['author'] = $page->users->username;
               $pages_array['image'] = $page->image;
               $pages_result[] = $pages_array;
           }
           echo parent::json_encode_cyr($pages_result);
       }
       else
       {
           // Загружаем все настройки
           $cfgsite = Kohana::$config->load('site');

           foreach ($cfgsite as $key => $value)
           {
               $options[$key] = Kohana::$config->load('site.' . $key);
           }

           $count_pages = ORM::factory('Page')->find_all()->count();

           // Подключаем профайлер
           if ($options['debug'] == 1) $profiler = View::factory('profiler/stats');

           $view = View::factory('site/index')
                       ->bind('options', $options)
                       ->bind('profiler', $profiler)
                       ->bind('count_pages', $count_pages);
           $this->response->body($view);
       }
    }
}