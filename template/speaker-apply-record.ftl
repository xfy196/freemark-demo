<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-control" content="no-cache" />
    <meta http-equiv="Cache" content="no-cache" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PDF</title>
    <style>
        @page {
            size: 1100px 1200px;
        }

        .clearfix:after {
            content: '';
            display: block;
            clear: both;
        }

        .clear-left {
            clear: left;
        }

        .clear-right {
            clear: right;
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
            display: inline-block;
            background-color: #1ab370;
            width: 10px;
            height: 10px;
            border-radius: 100%;
        }

        .approval-record-list {
            width: 49%;
            margin-top: 8px;

        }

        .approval-record-list .approval-record-item {
            /* height: 32px; */
            position: relative;
        }

        .approval-record-list .approval-record-item .approval-record-item-left {
            width: 66px;
            height: 100%;
            line-height: 32px;
            float: left;
            padding: 0 8px;
        }

        .approval-record-list .approval-record-item .approval-record-item-body {
            margin: 0 150px 0 60px;
            overflow: hidden;
            position: relative;
        }

        .approval-record-list .approval-record-item .approval-record-item-body .approval-record-person-list .approval-record-person-item {
            width: 56px;
            text-align: center;
            float: left;
            overflow: hidden;
            height: 66px;
        }

        .approval-record-list .approval-record-item.countersign .approval-record-item-body .approval-record-person-list .approval-record-person-item {
            float: none;
        }

        /* .approval-record-list .approval-record-item.countersign .approval-record-item-body .approval-record-person-list .approval-record-person-item .avatar {
            margin: 0;
        } */

        .approval-record-list .approval-record-item .approval-record-item-body .approval-record-person-list .approval-record-person-item .avatar {
            width: 32px;
            height: 32px;
            border-radius: 100%;
            margin: 0 auto;
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            background-color: red;
        }

        .approval-record-list .approval-record-item .approval-record-item-body .approval-record-person-list .approval-record-person-item .person-name {
            font-size: 12px;
            font-weight: 400;
            color: #333333;
            margin-top: 5px;
        }

        .approval-record-list .approval-record-item.countersign .approval-record-item-right {
            position: absolute;
            float: none;
            top: 50%;
            transform: translateY(-50%);
            right: 0;
        }

        .approval-record-list .approval-record-item .approval-record-item-right {
            float: right;
            min-width: 150px;
            text-align: center;
            text-align: right;
        }

        .approval-record-list .approval-record-item .circle {
            width: 8px;
            height: 8px;
            background: #e5e5e5;
            border-radius: 100%;
            border: 2px solid #FAFAFA;
        }

        .approval-record-list .approval-record-item .circle.reject {
            background-color: #FF4D4F;

        }

        .approval-record-list .approval-record-item .circle.pass {
            background-color: #1ab370;
        }

        .approval-record-list .approval-record-item .circle.withdraw {
            background-color: #999999;
        }

        .approval-record-list .approval-record-item .approval-type {
            display: inline-block;
            padding: 1px 3px;
            line-height: 16px;
            text-align: center;
            background-color: #f4f4f4;
            border-radius: 2px;
            font-size: 12px;
            color: #1AB370;
            margin-left: 12px;
        }

        .approval-record-list .approval-record-item .approval-record-item-right .date {
            font-weight: 400;
            font-size: 12px;
            color: #999999;
            margin-top: 8px;
        }

        .approval-record-list .approval-record-item .approval-record-item-right .status {
            font-size: 12px;
            font-weight: 400;

            line-height: 14px;
        }

        .approval-record-list .approval-record-item .approval-record-item-right .reject {
            color: #FF4D4F;

        }

        .approval-record-list .approval-record-item .approval-record-item-right .pass {
            color: #1ab370;
        }

        .approval-record-list .approval-record-item .approval-record-item-right .withdraw {
            color: #999999;
        }
        .filed-container .item .label {
            display: inline-block;
            font-family: PingFang SC, PingFang SC;
            font-weight: 400;
            font-size: 14px;
            color: #333333;
            line-height: 20px;
            text-align: left;
        }
        .filed-container .item .value {
            display: inline-block;
            font-family: PingFang SC, PingFang SC;
            font-weight: 400;
            font-size: 14px;
            color: #666666;
            line-height: 16px;
        }
        .filed-container .item .time {
            display: inline-block;
            font-family: PingFang SC, PingFang SC;
            font-weight: 400;
            font-size: 14px;
            color: #666666;
            line-height: 16px;
        }
    </style>
</head>

<body>

    <#escape x as x?html>
        <div class="container">
            <div class="public-header">
                <span class="public-header-tltle"><span style="margin-right: 10px;" class="circle"></span>
                    讲者申请记录</span>
            </div>
            <!-- 审批记录 -->
            <#if (approvalRecordDetailDto??) && (approvalRecordDetailDto.auditors??) &&
                (approvalRecordDetailDto.auditors?size gt 0)>
                <div class="approval-record-list">
                    <#list approvalRecordDetailDto.auditors as auditor>
                        <!-- 正常就是或签 会签就是countersign -->
                        <div class="approval-record-item <#if auditor.approvalType != 0>countersign</#if>">
                            <!-- 左侧 -->
                            <div class="approval-record-item-left clearfix">
                                <div class="circle pass">
                                </div>
                                <div class="approval-type">
                                    <#if auditor.approvalType==0>
                                        或签
                                        <#else>
                                            会签
                                    </#if>
                                </div>
                            </div>

                            <!-- 右侧 -->
                            <div class="approval-record-item-right">
                                <div class="status pass">
                                    已通过
                                </div>
                                <#if auditor.auditTime?has_content>
                                    <div class="date"> ${auditor.auditTime?number_to_datetime?string("yyyy-MM-dd
                                        HH:mm:ss")}</div>
                                </#if>
                            </div>
                            <!-- 中间  -->
                            <div class="approval-record-item-body clearfix">
                                <div class="approval-record-person-list">
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>
                                    <div class="approval-record-person-item">
                                        <div class="avatar">
                                        </div>
                                        <div class="person-name">
                                            小小荧
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </#list>
                </div>

            </#if>
            <div class="filed-container">
                <#if (approvalRecordDetailDto??) && (approvalRecordDetailDto.recordVo??)>
                <div class="item">
                    <div class="label">发起人</div>
                    <div class="value">${approvalRecordDetailDto.recordVo.applierName}</div>
                    <div class="time">
                        ${approvalRecordDetailDto.recordVo.createTime?number_to_datetime?string("yyyy-MM-dd
                        HH:mm:ss")}</div>
                </div>
            </#if>
            <#if (approvalRecordDetailDto??) && (approvalRecordDetailDto.ccUser??) && (approvalRecordDetailDto.ccUser?size gt 0)>
            <#assign ccUsers = ''>
            <#list approvalRecordDetailDto.ccUser as user>
                <#if user?index == 0>
                    <#assign ccUsers = user.auditName>
                <#else>
                    <#assign ccUsers = ccUsers + ";" + user.auditName>
                </#if>
            </#list>
            <div class="item">
                <div class="label">抄送人</div>
                <div class="value">${ccUsers}</div>
            </div>
            </div>
           </#if>
            <#if (approvalRecordDetailDto??) && (approvalRecordDetailDto.customFields??) && (customFields?size gt 0)>
            <#list approvalRecordDetailDto.customFields as customField>
            <div class="item">
                <div class="label">${customField.value}</div>
            </div>
            </#list>
           
           </#if>
        </div>
    </#escape>
</body>

</html>