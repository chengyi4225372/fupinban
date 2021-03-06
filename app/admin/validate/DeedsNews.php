<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 17:43
 */

namespace app\admin\validate;


class DeedsNews extends  AdminBase{
    protected $rule =   [
        'title'           => 'require',
        'content'         => 'require',
        'introduce'       => 'require',
        'create_time'     => 'require',
        'music_title'     => 'require',
        'imgs'            => 'require',
        'music'            => 'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'            => '请输入文章标题',
        'content.require'          => '请输入文章详情',
        'introduce.require'        => '请输入文章简介',
        'create_time.require'      => '无法获取创建时间',
        'imgs.require'             => '请上传文章展示图',
        'music.require'            => '请上传音乐文件',
        'music_title.require'      => '请输入音乐标题',
    ];

    // 应用场景
    protected $scene = [
        'add'       =>  ['title','introduce','content','create_time','music','imgs','music_title'],
        'edit'      =>  ['title','introduce','content','music','imgs','music_title'],
    ];
}