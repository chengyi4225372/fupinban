<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 14:24
 */
namespace app\common\logic;


class PrefaceContent extends LogicBase{

    public function getApiContent(){
       $this->modelPrefaceContent->alias('a');

       $join =[
           [SYS_DB_PREFIX . 'file f','a.video = f.id','LEFT'],
       ];

       $field = 'a.id,a.title,a.content,f.path';
       $this->modelPrefaceContent->join=$join;

       $info = $this->modelPrefaceContent->getInfo(null,$field);

       $info['path'] = config('Path.file').$info['path'];
       $info['content'] = strip_tags(html_entity_decode($info['content']));

       return $info;
    }
}