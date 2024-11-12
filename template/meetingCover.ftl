<!DOCTYPE html PUBLIC "-//OPENHTMLTOPDF//DOC XHTML Character Entities Only 1.0//EN" "">
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>PDF</title>
    <style>
        @page {
            size: 1100px 1200px;
            -fs-max-overflow-pages: 10; /* 0 by default */
            -fs-overflow-pages-direction: ltr; /* Also available is rtl */
            @top-right {

                /* 分页页数 */
                /*content: "Page33" counter(page) " of " counter(pages);*/
                background-image: url("${logoUrl}");
                background-size: contain;
                background-repeat: no-repeat;
                background-position: right;
            }
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

        .divider {
            width: 950px;
            border-bottom: 1px solid #333333;
            border-radius: 2px 2px 2px 2px;
            margin: 24px auto;
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

        hr {
            margin: 24px 0;
        }

        /*table {*/
        /*    page-break-inside: avoid;*/
        /*    -fs-table-paginate: paginate;*/
        /*    -fs-page-break-min-height: 1.5cm;*/
        /*}*/

        table td {
            padding: 10px 10px 10px 14px;
            word-wrap: break-word;
            word-break: break-all;
            white-space: normal;
        }

        .images {
            margin-top: 24px;
        }

        .images img {
            width: 100%;
            height: 1050px;
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
        <#if exportCover?? && exportCover>
            <div class="page">
                <p style="text-align: center;margin-top: 48px;">
                    <span style="color: #333333; font-size: 32px"><strong>会议封皮</strong></span>
                </p>
                <div class="divider"></div>

                <table style="border-collapse: collapse; table-layout: fixed; width: 100%" border="1" cellpadding="0">
                    <colgroup>
                        <col style="width: 20%;">
                        <col style="width: 20%;">
                        <col style="width: 20%;">
                        <col style="width: 20%;">
                        <col style="width: 20%;">
                      </colgroup>
                    <tbody>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>姓名</strong></span>
                        </td>
                        <td style="width: 20%; vertical-align: middle">
                            <span style="color: #333333;">${userName}</span>
                        </td>
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>岗位</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; vertical-align: middle">${userDepartment}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>二级经理</strong></span>
                        </td>
                        <td style="width: 20%; vertical-align: middle">${firstDepartment}</td>
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>上级经理</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; vertical-align: middle">${userRegion}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>员工号</strong></span>
                        </td>
                        <td style="width: 80%; vertical-align: middle" colspan="4">
                            ${userCode}
                        </td>
                    </tr>
                    <tr style="height: 72px">
                        <td style="
                      width:100%;
                      text-align: center;
                      vertical-align: middle;
                    " colspan="5">
                            <span style="color: #333333; font-size: 24px"><strong>会议基础信息</strong></span>
                        </td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>编码</strong></span>
                        </td>
                        <td colspan="2" style="width: 20%; vertical-align: middle">${planCode}</td>
                        <td  style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>参会人数</strong></span>
                        </td>
                        <td colspan="1" style="width: 20%; vertical-align: middle">${attendeesCount}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>内部参会人数</strong></span>
                        </td>
                        <td colspan="2" style="width: 20%; vertical-align: middle">${insideAttendeeCount}</td>
                        <td  style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>外部参会人数</strong></span>
                        </td>
                        <td colspan="1" style="width: 20%; vertical-align: middle">${outsideAttendeeCount}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>会议名称</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; vertical-align: middle">${name}</td>
                        <td  style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>活动类型</strong></span>
                        </td>
                        <td colspan="1" style="width: 20%; vertical-align: middle">${meetingTypeName}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>会议主题</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; vertical-align: middle">${topic}</td>
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>活动地点</strong></span>
                        </td>
                        <td colspan="1" style="width: 20%; vertical-align: middle">${meetingAddress}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>活动开始时间</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; vertical-align: middle">${planStartTimeStr}</td>
                        <td  style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>成本中心</strong></span>
                        </td>
                        <td colspan="1" style="width: 20%; vertical-align: middle">${costCenter}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>预算金额</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; vertical-align: middle">${expenseCost}</td>
                        <td  style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>实际金额</strong></span>
                        </td>
                        <td colspan="1" style="width: 20%; vertical-align: middle">${actualFee}</td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>备注</strong></span>
                        </td>
                        <td style="width: 80%; vertical-align: middle" colspan="4">
                            ${remark}
                        </td>
                    </tr>
                    <tr style="height: 72px">
                        <td style="
                      width:100%;
                      text-align: center;
                      vertical-align: middle;
                    " colspan="5">
                            <span style="color: #333333; font-size: 24px"><strong>个人费用明细</strong></span>
                        </td>
                    </tr>
                    <tr style="height: 36px">
                        <#list personalExpenseCostHeader as header>
                            <td style="width: 20%; text-align: left; vertical-align: middle">
                                <span style="color: #333333; font-size: 14px"><strong>${header}</strong></span>
                            </td>
                        </#list>

                    </tr>
                    <#list personalExpenseCost as item>
                        <tr style="height: 36px">
                            <#list personalExpenseCostHeader as header>
                                <td style="width: 20%; vertical-align: middle">
                                    ${item[header]}
                                </td>

                            </#list>
                        </tr>
                    </#list>
                    <tr style="height: 72px">
                        <td style="
                      width:100%;
                      text-align: center;
                      vertical-align: middle;
                    " colspan="5">
                            <span style="color: #333333; font-size: 24px"><strong>第三方费用</strong></span>
                        </td>
                    </tr>

                    <tr style="height: 36px">
                        <#list otherExpenseCostHeader as header>
                            <#if header?index == 0>
                                <td colspan="1" style=" text-align: left; width: 20%; vertical-align: middle;">
                                    <span style="color: #333333; font-size: 14px"><strong>${header}</strong></span>
                                </td>
                            <#else>
                                <td colspan="2" style=" text-align: left; width: 40%; vertical-align: middle;">
                                    <span style="color: #333333; font-size: 14px"><strong>${header}</strong></span>
                                </td>
                            </#if>
                        </#list>

                    </tr>


                    <#list otherExpenseCost as item>
                        <tr style="height: 36px">
                            <#list otherExpenseCostHeader as header>

                                <#if header?index ==0>
                                    <td style="vertical-align: middle"
                                        colspan="1">
                                        ${item[header]}
                                    </td>
                                <#else>
                                    <td style="vertical-align: middle"
                                        colspan="2">
                                        ${item[header]}
                                    </td>
                                </#if>

                            </#list>
                        </tr>
                    </#list>

                    <tr style="height: 72px">
                        <td style="
                      width:100%;
                      text-align: center;
                      vertical-align: middle;
                    " colspan="5">
                            <span style="color: #333333; font-size: 24px"><strong>讲课费明细</strong></span>
                        </td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>姓名</strong></span>
                        </td>
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>角色</strong></span>
                        </td>
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>金额</strong></span>
                        </td>
                        <td colspan="2" style="width: 40%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>级别</strong></span>
                        </td>
                    </tr>
                    <#list speakerFee as speaker>
                        <tr style="height: 36px">
                            <td style="width: 20%; vertical-align: middle">${speaker.name}</td>
                            <td style="width: 20%; vertical-align: middle">${speaker.speakerRoleName}</td>
                            <td style="width: 20%; vertical-align: middle">${speaker.feeUsFeeDesc}</td>
                            <td colspan="2" style="width: 40%; vertical-align: middle">${speaker.speakerLevel}</td>
                        </tr>
                    </#list>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>审批流程</strong></span>
                        </td>
                        <td style="width: 80%; vertical-align: middle" colspan="4">
                            <#list approvalProcesses as approval>
                                <div>
                                    ${approval}

                                </div>
                            </#list>
                        </td>
                    </tr>
                    <tr style="height: 36px">
                        <td style="width: 20%; text-align: left; vertical-align: middle">
                            <span style="color: #333333; font-size: 14px"><strong>会议日程</strong></span>
                        </td>
                        <td style="width: 80%; vertical-align: middle" colspan="4">
                            <span style="color: #333333; font-size: 14px">见附件</span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <#list images as image>
                <div class="page page-break-before">
                    <div class="images">
                        <img src="${image}"/>
                    </div>
                </div>
            </#list>
        </#if>
        <div>
            <#list speakerProtocols as template>
                <div class="page page-break-before">
                    <#noescape>
                        ${template}
                    </#noescape>
                </div>
            </#list>
        </div>
    </div>
</#escape>

</body>
<object type="watermark"></object>

</html>
