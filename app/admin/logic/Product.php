<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 15:02
 */
namespace app\admin\logic;


use think\Error;

class Product extends AdminBase{


    /**
     * 获取条件
     */
    public function getWhere($params=[]){
         $data =[];
         isset($params['search_data']) && $data['a.title|a.area'] = ['like','%'.$params['search_data'].'%'];
         $data['a.status'] =1;
         return $data;
    }

    /**
     * 列表
     */
    public function  getThislist($where =[],$field ='a.*,p.path'){
           $this->modelProduct->alias('a');

           $join=[
             [SYS_DB_PREFIX . 'picture p','a.p_imgs = p.id','LEFT'],
           ];

          $this->modelProduct->join=$join;

          return  $this->modelProduct->getlist($where,$field,['sort'=>'desc','id'=>'desc'],15);
    }

    /**
     * 添加
     */
    public function setThisArr($params=[]){
          $params['create_time'] =time();
          $result = $this->validateProduct->scene('add')->check($params);

          if(!$result){
              return [RESULT_ERROR,$this->validateProduct->getError()];
          }

          $url = url('getlist');
          $type= isset($params['id'])?'编辑':'添加';
          $ret = $this->modelProduct->setInfo($params);
          $ret && action_log($type,'model product where id='.$ret);
          return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelProduct->getError()];
    }

    /**
     * 编辑
     */
    public function  updateThisArr($params=[]){
        $result = $this->validateProduct->scene('edit')->check($params);

        if(!$result){
            return [RESULT_ERROR,$this->validateProduct->getError()];
        }

        $url = url('getlist');
        $type= isset($params['id'])?'编辑':'添加';
        $ret = $this->modelProduct->setInfo($params);
        $ret && action_log($type,'model product where id='.$params['id']);
        return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelProduct->getError()];
    }

    /**
     * 获取详情
     */
    public function  getThisArr($params=[]){
        if(empty($params['id']) || !isset($params['id'])){
            return [RESULT_ERROR,'缺少查询条件'];
        }

        return $this->modelProduct->getinfo(['id'=>$params['id']]);
    }

    /**
     * 删除
     */
    public function delThisid($id=''){
         if(empty($id) || !isset($id)){
             return [RESULT_ERROR,'缺少删除条件'];
         }

         $url = url('getlist');
         $ret = $this->modelProduct->setFieldValue(['id'=>$id],'status',0);
         $ret && action_log('删除数据','model product 删除 where id ='.$id);
         return $ret ?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR, $this->modelProduct->getError()];
    }


}