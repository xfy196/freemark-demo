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
      .approval-record-list{

      }
      .approval-record-list .approval-record-item .outer-circle{
        width: 8px;
        height: 8px;
        background: #cceede;
        position: relative;
        border-radius: 100%;
        display: inline-block;
      }
      .approval-record-list .approval-record-item .inner-circle{
        width: 8px;
        height: 8px;
        background: #1AB370;
        border-radius: 100%;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%)
      }
      .approval-record-list .approval-record-item .approval-type{
        display: inline-block;
        width: 29px;
        height: 16px;
        line-height: 16px;
        text-align: center;
        background-color: #f4f4f4;
        border-radius: 2px;
        font-size: 12px;
        color: #1AB370;
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
    <!-- 审批记录 -->
    <div class="approval-record-list">
    <div>
        <div class="approval-record-item">
         <!-- 左侧 -->
          <div>
              <div class="active outer-circle">
                  <div class="inner-circle"></div>
              </div>
              <div class="approval-type">或签</div>
          </div>
     </div>
    <div>

    </div>
    <!-- 中间  -->
    <!-- 右侧 -->
    </div>
   
    </div>
</div>
</#escape>
</body>
</html>