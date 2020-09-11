<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 16:56
 */
namespace app\admin\validate;


class DeedsLog extends  AdminBase{
    // 验证规则
    protected $rule =   [
        'title'           => 'require',
        'content'         => 'require',
        'introduce'       => 'require',
        'create_time'     => 'require',
        'imgs'            =>'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'            => '请输入文章标题',
        'content.require'          => '请输入文章详情',
        'introduce.require'        => '请输入文章简介',
        'create_time.require'      => '无法获取创建时间',
         'imgs'                    =>'请上传展示图'
    ];

    // 应用场景
    protected $scene = [
        'add'       =>  ['title','introduce','content','create_time','imgs'],
        'edit'      =>  ['title','introduce','content','imgs'],
    ];

}