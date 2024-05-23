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

        p {
            font-size: 14px;
            margin-top: 8px;
            color: #333333;
            text-indent: 2em;
        }
    </style>
</head>

<body>
    <#escape x as x?html>

        <div class="container">
            <div class="page">
                <p style="text-align: center; font-size: 28px;"><strong><span>员工签到表</span></strong></p>
                <p>会议主题：</p>
                <p>会议时间：</p>
                <p>会议地点：</p>
                <br/>
                <table style="border-collapse: collapse; width: 100%;" border="1">
                    <tbody>
                        <tr>
                            <td style="width: 22.0646%;"><strong><span>姓名</span></strong></td>
                            <td style="width: 22.0646%;"><strong><span>机构</span></strong></td>
                            <td style="width: 22.0646%;"><strong><span>科室</span></strong></td>
                            <td style="width: 22.0646%;"><strong><span>会议签到</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 22.0646%;">&nbsp;</td>
                            <td style="width: 22.0646%;">&nbsp;</td>
                            <td style="width: 22.0646%;">&nbsp;</td>
                            <td style="width: 22.0646%;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 22.0646%;">&nbsp;</td>
                            <td style="width: 22.0646%;">&nbsp;</td>
                            <td style="width: 22.0646%;">&nbsp;</td>
                            <td style="width: 22.0646%;">&nbsp;</td>
                        </tr>
                    </tbody>
                </table>


            </div>
            <div class="page page-break-before">
                <p style="text-align: center; font-size: 28px;"><strong><span>员工签到表</span></strong></p>
                <p>会议主题：</p>
                <p>会议时间：</p>
                <p>会议地点：</p>
                <br/>
                <table style="border-collapse: collapse; width: 100%;" border="1">
                    <tbody>
                        <tr>
                            <td style="width: 14.224%;"><strong><span>姓名</span></strong></td>
                            <td style="width: 14.224%;"><strong><span>账号</span></strong></td>
                            <td style="width: 14.224%;"><strong><span>辖区</span></strong></td>
                            <td style="width: 14.224%;"><strong><span>职务</span></strong></td>
                            <td style="width: 14.224%;"><strong><span>在线时长</span></strong></td>
                            <td style="width: 14.224%;"><strong><span>会议签到</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                            <td style="width: 14.224%;">&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </#escape>

</body>
<object type="watermark"></object>

</html>