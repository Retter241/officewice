<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth; // фасад
use Menu;

class AdminController extends \App\Http\Controllers\Controller\Controller
{
    //

    protected $p_rep;// обьект репозитория лэйаутов

    protected $user; // обьект аутенцифицированного юзера
    protected $template; // обьект шаблона
    protected $content = FALSE; // обьект контента
    protected $title ; //  заголовок сраницы
    protected $vars ; //  массив эл-тов для передачи в шаблон


    public function __construct() {

    	$this->user = Auth:user();

    	if(!$this->user) {
    		abort(403);
    	}
    }

    public function renderOutput (){
    	$this->vars - array_add($this->vars , 'title' , $this->title);

    	$menu = $this->getMenu();

    	$navigation = view(env('THEME').'.admin.navigation' )->with('menu' , $menu)->render();

    	$this->vars = array_add($this->vars ,'navigation' , $navigation);
    }

     public function getMenu (){
     	return Menu:make('adminMenu' , function($menu){

     		$menu->add('Статичные части'  , array('route' => 'admin.layouts.index'));
     		//$menu->add('Привилегии'  , array('route' => 'admin.permissions.index'));

     	});
     }


}
