<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 9:57
 */

namespace app\admin\validate;


class DeedsWorks extends AdminBase{
    protected $rule =   [
        'cates_id'           => 'require',
        'title'              => 'require',
        'resources'          => 'require',
        'create_time'        => 'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'              => '请输入标题',
        'resources.require'          => '请上传资源文件',
        'cates_id.require'           => '请选择分类',
        'create_time.require'        => '无法获取创建时间',
    ];

    // 应用场景
    protected $scene = [
        'add'       =>  ['title','resources','cates_id','create_time',],
        'edit'      =>  ['title','resources','cates_id',],
    ];
}