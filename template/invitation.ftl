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
                            style="font-size: 14px;">为推进${domain}领域的科学研究和学术交流，${company}（以下简称${companyAbbreviation}）非常高兴地邀请您参加下述学术会议（以下简称&ldquo;会议&rdquo;）具体信息如下：</span></span>
                </p>
                <p><span style="color: #333333;">会议主题：${topic}</span></p>
                <p><span style="color: #333333;">会议时间：${planDate}</span>
                </p>
                <p><span style="color: #333333;">会议地点：${address}</span></p>
                <p><span style="color: #333333;">会议日程：</span></p>
                <table style="border-collapse: collapse; width: 100%;" border="1">
                    <tbody>
                        <tr>
                            <td style="width: 33.33%;"><strong><span style="color: #333333;">时间</span></strong></td>
                            <td style="width: 33.33%;"><strong><span style="color: #333333;">会议环节或讲题</span></strong>
                            </td>
                            <td style="width: 33.33%;"><strong><span
                                        style="color: #333333;">提供服务的HCP姓名</span></strong></td>
                        </tr>
                        <#list meetingSchedule as item>
                        <tr>
                            <td style="width: 33.33%;"><span style="color: #333333;">${item.timeStr}</span></td>
                            <td style="width: 33.33%;"><span style="color: #333333;">${item.name}</span></td>
                            <td style="width: 33.33%;"><span style="color: #333333;">${item.content}</span></td>
                        </tr>
                        </#list>
                    </tbody>
                </table>
                <p><span style="color: #333333;">备注信息：${remark}</span></p>

            </div>
        </div>
    </#escape>

</body>
<object type="watermark"></object>

</html>