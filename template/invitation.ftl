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
            -fs-max-overflow-pages: 10;
            /* 0 by default */
            -fs-overflow-pages-direction: ltr;
            /* Also available is rtl */
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
            width: 950px;
            margin: 0 auto;
            background: #fff;
            color: #333333;
        }
    </style>
</head>

<body>
    <#escape x as x?html>

        <div class="container">
            <div class="page">
                <p style="text-align: center; line-height: 1;"><strong><span style="color: #333333; font-size: 64px;">邀请函</span></strong>
                </p>
                <hr style="color: #333333; margin-top: 50px;" />
                <p style="margin-top: 48px; line-height: 1;"><span style="color: #333333; font-size: 36px;">尊敬的专家：</span></p>
                <p style="text-indent: 2em; margin-top: 24px;"><span style="color: #333333;"><span
                            style="font-size: 36px;">为推进XXXXXXXXX领域的科学研究和学术交流，XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX（以下简称&ldquo;华润川贸&rdquo;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX）非常高兴地邀请您参加下述学术会议（以下简称&ldquo;会议&rdquo;）具体信息如下：</span></span>
                </p>
            </div>
        </div>
    </#escape>

</body>
<!-- <object type="watermark"></object> -->

</html>