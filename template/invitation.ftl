<!DOCTYPE html PUBLIC "-//OPENHTMLTOPDF//DOC XHTML Character Entities Only 1.0//EN" "">
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PDF</title>
    <style>
        @page {
            size: A4;
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

        .clearfix:after {
            content: "";
            display: block;
            clear: both;
        }

        @media print {
            .page-break-before {
                page-break-before: always;
            }
        }

        @media print {
            .page-break-before {
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
            margin: 0 auto;
            background: #fff;
            color: #333333;
        }
        p{
            font-size: 14px;
            margin-top: 8px;
            color: #333333;
        }
        table{
            font-size: 14px;
            color: #333333;
        }
    </style>
</head>

<body>
    <#escape x as x?html>

        <div class="container">
            <div class="page">
                <p style="text-align: center; line-height: 1;"><strong><span
                            style="color: #333333; font-size: 28px;">邀请函</span></strong>
                </p>
                <br />
                <p style="line-height: 1;"><span style="color: #333333; font-size: 14px;">尊敬的专家：</span></p>
                <p style="text-indent: 2em; margin-top: 14px;"><span style="color: #333333;"><span
                            style="font-size: 14px;">为推进XXXXXXXXX领域的科学研究和学术交流，XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX（以下简称&ldquo;华润川贸&rdquo;）非常高兴地邀请您参加下述学术会议（以下简称&ldquo;会议&rdquo;）具体信息如下：</span></span>
                </p>
                <p><span style="color: #333333;">会议主题：111</span></p>
                <p><span style="color: #333333;">会议时间：111</span>
                </p>
                <p><span style="color: #333333;">会议地点：111</span></p>
                <p><span style="color: #333333;">会议日程：</span></p>
                <p>&nbsp;</p>
                <table style="border-collapse: collapse; width: 100%;" border="1">
                    <tbody>
                        <tr>
                            <td style="width: 33.33%;"><strong><span style="color: #333333;">时间</span></strong></td>
                            <td style="width: 33.33%;"><strong><span style="color: #333333;">会议环节或讲题</span></strong>
                            </td>
                            <td style="width: 33.33%;"><strong><span
                                        style="color: #333333;">提供服务的HCP姓名</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 33.33%;"><span style="color: #333333;">15:20~16:40</span></td>
                            <td style="width: 33.33%;"><span style="color: #333333;">签到</span></td>
                            <td style="width: 33.33%;"><span style="color: #333333;">--</span></td>
                        </tr>
                        <tr>
                            <td style="width: 33.33%;">&nbsp;</td>
                            <td style="width: 33.33%;">&nbsp;</td>
                            <td style="width: 33.33%;">&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
                <p><span style="color: #333333;">备注信息：</span></p>

            </div>
        </div>
    </#escape>

</body>
<object type="watermark"></object>

</html>