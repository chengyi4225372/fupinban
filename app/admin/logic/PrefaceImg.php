<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 11:55
 */

namespace app\admin\logic;


/**
 * Class PrefaceImg
 * @package app\admin\logic
 * 前言 首页图片
 */
class PrefaceImg extends AdminBase{

    /**
     * 获取首页图片
     */
      public function getOneinfo(){

         return  $this->modelPrefaceImg->getInfo();
      }


      /**
       * 添加首页图片
       */
      public function setImgsInfo($param=[]){

          if (empty($param['imgs'])|| !isset($param['imgs'])) {
              return [RESULT_ERROR,'请上传图片'];
          }

          $url = url('getimg');
          $handle_text = isset($param['id']) ? '新增' : '编辑';
          $result = $this->modelPrefaceImg->setInfo($param);
          $result && action_log($handle_text, 'prefaceimg' .'上传图片 id='.$result);
          return $result ? [RESULT_SUCCESS, '上传成功', $url] : [RESULT_ERROR, $this->modelPrefaceImg->getError()];

      }


    /**
     * 编辑首页图片
     */
      public function setEditInfo($param=[]){
          if (empty($param['imgs'])|| !isset($param['imgs'])) {
              return [RESULT_ERROR,'请上传图片'];
          }

          if (empty($param['id'])|| !isset($param['id'])) {
              return [RESULT_ERROR,'主键不能为空'];
          }

        $url = url('getimg');
        $handle_text = isset($param['id']) ? '新增' : '编辑';
        $result = $this->modelPrefaceImg->setFieldValue(['id'=>$param['id']],'imgs',$param['imgs']);
        $result && action_log($handle_text, 'prefaceimg' .'上传图片 id='.$result);
        return $result ? [RESULT_SUCCESS, '上传图片成功', $url] : [RESULT_ERROR, $this->modelPrefaceImg->getError()];

    }

}