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
            size: A4;
            -fs-max-overflow-pages: 10; /* 0 by default */
         -fs-overflow-pages-direction: ltr; /* Also available is rtl */
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
      .page .img {
        display: block;
        width: 100%;
        height: 1360px;
      }
      .page .img:first-of-type{
        margin-top: 16px;
        height: 1320px;
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
        <div class="page page-break-before">
            <div class="title">云端截图</div>
            <div class="imgs">
                <#list screenshots as img>
                <img class="<#if img?index !=0>page-break-before</#if> img" src="${img}" alt=""/>
              </#list>
            </div>
        </div>
    </div>
</#escape>

</body>
  <object type="watermark"></object>
</html>