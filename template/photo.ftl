<!DOCTYPE html PUBLIC
"-//OPENHTMLTOPDF//DOC XHTML Character Entities Only 1.0//EN" "">
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PDF</title>
    <style>
        @page {
          size: 1100px 1200px;
        }
        *{
            margin: 0;
            padding: 0;
        }
        body {
            font-family: 'Source Han Sans', 'Emoji';
            font-size: 16px;
            line-height: 1.5;
        }
        .clearfix:after {
        content: "";
        display: block;
        clear: both;
      }
      @media print{
        .page-break-before{
            page-break-before: always;
        }
      }
      @media print{
        .page-break-before{
            page-break-before: always;
        }
      }
      object[type="watermark"] {
        position: fixed;
        display: block;
        width: 100%;
        height: 100%;
        transform: rotate(-45deg);
        z-index: 1000;
        left: 0;
        top: 0;
      }
      .container {
        width: 950px;
        margin: 0 auto;
        background: #fff;
        color: #333333;
      }
      .title {
        font-size: 24px;
        color: #333333;
        font-weight: bolder;
      }
      .page .img{
        display: block;
        width: 100%;
        height: 1100px;
      }
      .page .img:first-child{
        margin-top: 16px;
        height: 1040px;
      }
      .cloud-screenshot .img-box:first-child .img{
        margin-top: 16px;

        height: 980px;
      }
      .cloud-screenshot .img-box .img {
        height: 1030px;
      }
      .picture-info {
            position: relative;
            padding: 7px 14px;
            background: #f5f5f5;
            border-radius: 0px 0px 4px 4px;
            border: 1px solid #eeeeee;
            font-size: 13px;
            color: #666666;
            overflow: hidden;
        }

        .info-left {
            float: left;
            padding-top: 7px;
        }

        .info-right {
            float: right;
            padding: 3px 10px;
            background: #eeeeee;
            border-radius: 18px;
            text-align: center;
            line-height: 28px;
        }

        .split-line {
            display: inline-block;
            position: relative;
            top: 2px;
            width: 1px;
            height: 14px;
            background: #e5e5e5;
            margin: 0 14px;
        }
    </style>
</head>
<body>
    <#escape x as x?html>

    <div class="container">
        <div class="page">
            <div class="title">照片</div>
            <div class="imgs">
                <#list photos as img>
                <img class="<#if img?index !=0>page-break-before</#if> img" src="${img}" alt=""/>
              </#list>
            </div>
        </div>
        <div class="page cloud-screenshot  page-break-before">
            <div class="title">云端截图</div>
            <div class="imgs">
                <#list screenshots as img>
                <div class="img-box">
                  <img class="<#if img?index !=0>page-break-before</#if> img" src="${img}" alt=""/>
                  <div class="picture-info">
                    <div class="info-left">
                        <span>截图人：</span>
                        <span class="split-line"> </span>
                        <span class="">截图时间：</span>
                    </div>
                    <div class="info-right">
                        参会人员：</div>
                </div>
                </div>
              </#list>
            </div>
        </div>
    </div>
</#escape>

</body>
  <object type="watermark"></object>
</html>