<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 10:06
 */

namespace  app\admin\controller;


class Explorehistory extends  AdminBase{

    /**
     * 列表页
     */
    public function index(){
        if(IS_POST){
            $params = $this->param;

            if($params['id']<=0){
                $this->jump( $this->logicExploreHistory->setThisVal($params));
            }else {
                $this->jump( $this->logicExploreHistory->updateThisVal($params));
            }
        }

        $info  =  $this->logicExploreHistory->getThisVal();
        $this->assign('info',$info);
        return $this->fetch();
    }


}