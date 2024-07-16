<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Cache-control" content="no-cache"/>
    <meta http-equiv="Cache" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>PDF</title>
    <style>
     @page {
            size: 1100px 1200px;
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

        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Source Han Sans', 'Emoji';
            font-size: 16px;
            line-height: 1.5;
        }

        .container {
            background: #fff;
        }

        .pt16 {
            padding-top: 16px;
        }

        .public-header {
            padding-bottom: 14px;
            padding-top: 40px;
            border-bottom: 1px solid #333333;
        }
        .public-header-tltle {
            color: #333;
            font-size: 24px;
            font-weight: 500;
            position: relative;
            padding-left: 1px;
            display: inline;
        }
        .circle {
        pointer-events: none;
        background-color: #1ab370;
        display: inline-block;
        width: 10px;
        height: 10px;
        border-radius: 100%;
      }
    </style>
    </head>
    <body>

<#escape x as x?html>
<div class="container">
    <div class="public-header">
        <span class="public-header-tltle"><span
            style="margin-right: 10px;" class="circle"></span>
            讲者申请记录</span>
    </div>
</div>
</#escape>
</body>
</html>