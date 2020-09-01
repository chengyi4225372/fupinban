<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 10:43
 */

namespace app\admin\logic;

class Overnews extends  AdminBase{

    /**
     * 获取条件
     */
    public function getWhere($param=[]){
         $data = [];
         isset($param['title']) && $data['title'] =['like','%'.$param['search_data'].'%'];
         return $data;
    }


    /**
     * 列表页
     */
    public function getThisList($where=[]){
        $where['status'] = 1;
        return $this->modelOvernews->getlist($where,false,['create_time'=>'desc'],15);
    }

    /**
     * 添加
     */
    public function setThisArr($params =[]){
         $params['create_time'] = time();

         $result = $this->validateOvernews->scene('add')->check($params);
         if(!$result){
             return [RESULT_ERROR, $this->validateOvernews->getError()];
         }
         $url = url('index');
         $type= isset($params['id'])?'编辑':'添加';
         $ret =$this->modelOvernews->setInfo($params);
         $ret && action_log($type,'model overnews 新增数据 where id= '.$ret);
         return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelOvernews->getError()];
    }

    /**
     * 编辑
     */
    public function editThisArr($params =[]){

        $result = $this->validateOvernews->scene('edit')->check($params);
        if(!$result){
            return [RESULT_ERROR, $this->validateOvernews->getError()];
        }

        $url = url('index');
        $type= isset($params['id'])?'编辑':'添加';
        $ret =$this->modelOvernews->setInfo($params);
        $ret && action_log($type,'model overnews 新增数据 where id= '.$ret);
        return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_ERROR,$this->modelOvernews->getError()];
    }

    /**
     * 获取详情
     */
    public function getIdInfo($id=''){
          if(empty($id) || is_null($id)){
              return [RESULT_ERROR,'无法获取查询条件'];
          }

          return $this->modelOvernews->getInfo(['id'=>$id]);
    }

    /**
     * 删除
     */
    public function delThisInfo($id){
        if(empty($id) || is_null($id)){
            return [RESULT_ERROR,'无法获取删除条件'];
        }

        $urls = url('index');
        $ret  = $this->modelOvernews->setFieldValue(['id'=>$id],'status',0);
        $ret && action_log('删除','model Overnews 删除 where id ='.$id);
        return $ret ?[RESULT_SUCCESS,'删除成功',$urls]:[RESULT_ERROR,$this->modelOvernews->getError()];
    }

}