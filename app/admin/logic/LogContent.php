<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/11
 * Time: 11:27
 */

namespace app\admin\logic;

class LogContent extends AdminBase{

    /**
     * 添加
     */
    public function setThisinfo($params =[]){
        if(empty($params['content']) || !isset($params['content'])){
            return [RESULT_ERROR,'描述不能为空'];
        }


        if(empty($params['title']) || !isset($params['title'])){
            return [RESULT_ERROR,'标题不能为空'];
        }

        $url = url('content');
        $type= isset($params['id'])?'编辑':'添加';
        $ret = $this->modelLogContent->setInfo($params);
        $ret && action_log($type,'model logContent add where id='.$ret);
        return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_SUCCESS,$this->modelLogContent->getError()];

    }

    /**
     * 编辑
     */
    public function updateThisinfo($params=[]){

        if(empty($params['id']) || !isset($params['id'])){
            return [RESULT_ERROR,'缺少更新条件'];
        }

        if(empty($params['content']) || !isset($params['content'])){
            return [RESULT_ERROR,'介绍不能为空'];
        }

        if(empty($params['title']) || !isset($params['title'])){
            return [RESULT_ERROR,'标题不能为空'];
        }


        $url = url('content');
        $type= isset($params['id'])?'编辑':'添加';
        $ret = $this->modelLogContent->setInfo($params);
        $ret && action_log($type,'model ProductContent edit where id='.$params['id']);
        return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_SUCCESS,$this->modelLogContent->getError()];
    }

    /**
     * 获取详情
     */
    public function getThisInfo(){
        return  $this->modelLogContent->getInfo();
    }


}