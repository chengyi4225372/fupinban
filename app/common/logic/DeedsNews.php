<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 18:05
 */

namespace app\common\logic;

class DeedsNews extends  LogicBase{

    /**
     * 扶贫日志列表接口
     */
    public function getApiNewsList(){

        $where =['status'=>1];
        $field = 'id,title,introduce';
        $order = ['sort'=>'desc','create_time'=>'desc'];
        $list  = $this->modelDeedsNews->getList($where,$field,$order,false);
        return $list;
    }

    /**
     * 扶贫日志详情接口
     */
     public function getNewsInfo($id =''){

         if(empty($id) || is_null($id) || !isset($id)){
             return false;
         }

         $this->modelDeedsNews->alias('a');

         $join= [
             [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
             [SYS_DB_PREFIX . 'file f','a.music = f.id','LEFT'],
         ];

         $where = ['a.id'=>$id,'a.status'=>1];

         $field = 'a.id,a.title,a.content,a.music_title,f.path as fpath ,p.path as ppath';
         $this->modelDeedsNews->join=$join;

         $info  =  $this->modelDeedsNews->getInfo($where,$field);
         $info['content'] = imageUrl($info['content']);
         $info['title']   = html_entity_decode($info['title']);
         $info['fpath']   = config('Path.file').$info['fpath'];
         $info['ppath']   = config('Path.img').$info['ppath'];

         return $info;
     }




}