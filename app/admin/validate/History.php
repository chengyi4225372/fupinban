<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/14
 * Time: 19:02
 */
namespace app\admin\validate;

class History extends  AdminBase{
    //验证规则
    protected $rule =   [
        'title'      => 'require',
        'content'    => 'require',
        'create_time'=>'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'         => '请输入新闻标题',
        'create_time.require'   => '请输入创建时间',
        'content.require'       => '请输入新闻简介',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['title','create_time','content'],
        'edit'      => ['title','content'],
    ];
}