<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/11
 * Time: 16:26
 */
namespace app\admin\logic;

class ExploreContent extends AdminBase{

    /**
     * 添加
     */
    public function setThisVal($params=[]){
        $params['create_time'] = time();

        if(empty($params['content'])){
            return [RESULT_ERROR,'简介不能为空'];
        }

        $urls = url('desc');
        $ret  = $this->modelExploreContent->setInfo($params);
        $ret && action_log('添加','model explorecontent add where id='.$ret);
        return $ret ?[RESULT_SUCCESS,'添加成功',$urls]:[RESULT_ERROR,$this->modelExploreContent->getError()];
    }

    /**
     * 编辑
     */
    public function updateThisVal($params=[]){

        if(empty($params['id']) || $params['id'] == 0){
            return [RESULT_ERROR,'缺少查询条件'];
        }

        if(empty($params['content'])){
            return [RESULT_ERROR,'简介不能为空'];
        }

        $urls = url('desc');
        $ret  = $this->modelExploreContent->setInfo($params);
        $ret && action_log('编辑','model explodecontent edit where id='.$ret);
        return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelExploreContent->getError()];
    }

    /**
     * 获取
     */
    public function getThisVal(){
        return $this->modelExploreContent->getInfo();
    }

}