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
    </style>
</head>

<body>
    <#escape x as x?html>

        <div class="container">
        </div>
    </#escape>

</body>
<object type="watermark"></object>

</html>