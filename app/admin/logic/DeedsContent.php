<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 18:17
 */
namespace app\admin\logic;



class DeedsContent extends  AdminBase{



    /**
     * 添加
     */
    public function setThisVal($params =[]){
        if(empty($params['content']) || !isset($params['content'])){
            return [RESULT_ERROR,'介绍不能为空'];
        }

        $url = url('content');
        $type= isset($params['id'])?'编辑':'添加';
        $ret = $this->modelDeedsContent->setInfo($params);
        $ret && action_log($type,'model ProductContent where id='.$ret);
        return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_SUCCESS,$this->modelDeedsContent->getError()];

    }

    /**
     * 编辑
     */
    public function updateThisVal($params=[]){
        if(empty($params['content']) || !isset($params['content'])){
            return [RESULT_ERROR,'介绍不能为空'];
        }

        if(empty($params['id']) || !isset($params['id'])){
            return [RESULT_ERROR,'缺少更新条件'];
        }

        $url = url('content');
        $type= isset($params['id'])?'编辑':'添加';
        $ret = $this->modelDeedsContent->setInfo($params);
        $ret && action_log($type,'model ProductContent where id='.$params['id']);
        return $ret ?[RESULT_SUCCESS,'操作成功',$url]:[RESULT_SUCCESS,$this->modelDeedsContent->getError()];
    }

    /**
     * 获取详情
     */
    public function getThisVal(){
        return  $this->modelDeedsContent->getInfo();
    }

}
