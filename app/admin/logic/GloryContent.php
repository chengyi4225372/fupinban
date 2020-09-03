<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 17:01
 */

namespace app\admin\logic;

class GloryContent extends AdminBase{

    /**
     * 添加
     */
     public function setThisVal($params=[]){
            $params['create_time'] = time();

            if(empty($params['content'])){
                return [RESULT_ERROR,'简介不能为空'];
            }

            $urls = url('content');
            $ret  = $this->modelGloryContent->setInfo($params);
            $ret && action_log('添加','model glorycontent add where id='.$ret);
            return $ret ?[RESULT_SUCCESS,'添加成功',$urls]:[RESULT_ERROR,$this->modelGloryContent->getError()];
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

          $urls = url('content');
          $ret  = $this->modelGloryContent->setInfo($params);
          $ret && action_log('编辑','model glorycontent edit where id='.$ret);
          return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelGloryContent->getError()];
      }

      /**
       * 获取
       */
      public function getThisVal(){
           return $this->modelGloryContent->getInfo();
      }
}