<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 11:55
 */

namespace app\admin\validate;


class ExploreNews extends  AdminBase{
    //验证规则
    protected $rule =   [
        'cate_id'    =>'require',
        'title'      => 'require',
        'content'    => 'require',
        'create_time'=>'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'         => '请输入新闻标题',
        'create_time.require'   => '请输入创建时间',
        'content.require'       => '请输入新闻简介',
        'cate_id.require'       => '请选择新闻分类',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['cate_id','title','create_time','content'],
        'edit'      => ['cate_id','title','content'],
    ];

}