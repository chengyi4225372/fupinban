<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 17:40
 */

namespace app\admin\validate;


class OverviewCates extends AdminBase{

    //验证规则
    protected $rule =   [
        'imgs'      => 'require',
        'title'     => 'require',
        'create_time'=>'require',
    ];

    // 验证提示
    protected $message  =   [
        'imgs.require'          => '请上传图片',
        'title.require'         => '请输入分类名称',
        'create_time.require'   => '请输入创建时间',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['imgs','title','create_time'],
        'edit'      => ['imgs','title',],
    ];
}