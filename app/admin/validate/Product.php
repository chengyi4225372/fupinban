<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 15:22
 */

namespace app\admin\validate;


class Product extends AdminBase{

    //验证规则
    protected $rule =   [
        'p_imgs'      => 'require',
        'area'        => 'require',
        'title'       => 'require',
        'content'     => 'require',
        'create_time' =>'require',
    ];

    // 验证提示
    protected $message  =   [
        'p_imgs.require'        => '请上传地区图片',
        'title.require'         => '请输入名称',
        'content.require'       => '请输入文章详情',
        'area.require'          => '请输入地区名称',
        'create_time.require'   => '请输入创建时间',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['area','p_imgs','title','content','create_time'],
        'edit'      => ['area','p_imgs','title','content',],
    ];
}