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
        @media print {
            .page-break-before {
                page-break-before: always;
            }
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
            min-height: 66px;
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
            overflow: hidden;
        }

        .approval-record-list .approval-record-item .approval-record-item-body .approval-record-person-list .approval-record-person-item .avatar img {
            width: 100%;
            height: 100%;
            border-radius: 100%;
        }

        .approval-record-list .approval-record-item .approval-record-item-body .approval-record-person-list .approval-record-person-item .person-name {
            font-size: 12px;
            font-weight: 400;
            color: #333333;
            margin-top: 5px;
            text-wrap: nowrap;
            overflow: hidden;
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

        .field-container .item {
            margin-top: 24px;
        }

        .field-container .item .label {
            display: inline-block;
            font-family: PingFang SC, PingFang SC;
            font-weight: 400;
            font-size: 14px;
            color: #333333;
            line-height: 20px;
            text-align: left;
        }

        .field-container .item .value {
            display: inline-block;
            font-family: PingFang SC, PingFang SC;
            font-weight: 400;
            font-size: 14px;
            color: #666666;
            line-height: 16px;
            margin-top: 8px;
        }

        .field-container .item .time {
            display: inline-block;
            font-family: PingFang SC, PingFang SC;
            font-weight: 400;
            font-size: 14px;
            color: #666666;
            line-height: 16px;
        }

        .field-container .item .label {
            display: block;
        }

        .field-container .item .video-list {
            margin-top: 8px;
        }

        .field-container .item .video-list .video-item {
            float: left;
            padding: 16px;
            margin-top: 8px;
            border: 1px solid #f5f5f5;
            margin-right: 20px;
            width: 136px;
            height: 156px;
            box-sizing: border-box;
            margin-bottom: 24px;
        }

        .field-container .item .video-list .video-item img {
            border: 1px solid #f5f5f5;
            width: 104px;
            height: 104px;
        }

        .field-container .item .video-list .video-item .preview-btn {
            color: #1ab370;
            cursor: pointer;
            font-size: 14px;
            font-weight: 400;
            line-height: 20px;
            text-align: center;
        }

        .field-container .item .file-list {
            margin-top: 8px;
        }

        .field-container .item .image-list {
            margin-top: 8px;
        }

        .field-container .item .image-list .img-item img {
            width: 336px;
            height: 336px;
        }

        .field-container .item .file-list .file-item {
            width: 100%;
            min-height: 36px;
            border: 1px solid #f5f5f5;
            box-sizing: border-box;
            margin-top: 4px;
            padding: 8px 14px;
            overflow: hidden;
            position: relative;
        }

        .field-container .item .file-list .file-item .name {
            font-weight: 400;
            font-size: 14px;
            color: #333333;
            float: left;
            max-width: 760px;
        }

        .field-container .item .file-list .file-item .preview-btn {
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
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
                                    <div class="date"> ${auditor.auditTime?number_to_datetime?string("yyyy年MM月dd日
                                        HH:mm:ss")}</div>
                                </#if>
                            </div>
                            <!-- 中间  -->
                            <div class="approval-record-item-body clearfix">
                                <div class="approval-record-person-list">
                                    <#if (auditor.participants??) && (auditor.participants?size gt 0)>
                                        <#list auditor.participants as participant>
                                            <div class="approval-record-person-item">
                                                <div class="avatar">
                                                    <#if participant.avatar?? && participant.avatar !=''>
                                                        <img src="${participant.avatar}" alt="" />
                                                        <#else>
                                                            <img src="https://representative-1252497236.cos.ap-beijing.myqcloud.com/static/default_avatar.png"
                                                                alt="" />
                                                    </#if>
                                                </div>
                                                <div class="person-name">
                                                    ${participant.auditName}
                                                </div>
                                            </div>
                                        </#list>
                                    </#if>

                                </div>
                            </div>

                        </div>
                    </#list>
                </div>

            </#if>
            <div class="field-container">
                <#if (approvalRecordDetailDto??) && (approvalRecordDetailDto.recordVo??)>
                    <div class="item">
                        <div class="label">发起人</div>
                        <div class="value">${approvalRecordDetailDto.recordVo.applierName}</div>
                        <div class="time">
                            ${approvalRecordDetailDto.recordVo.createTime?number_to_datetime?string("yyyy年MM月dd日
                            HH:mm:ss")}</div>
                    </div>
                </#if>
                <#if (approvalRecordDetailDto??) && (approvalRecordDetailDto.ccUser??) &&
                    (approvalRecordDetailDto.ccUser?size gt 0)>
                    <#assign ccUsers=''>
                        <#list approvalRecordDetailDto.ccUser as user>
                            <#if user?index==0>
                                <#assign ccUsers=user.auditName>
                                    <#else>
                                        <#assign ccUsers=ccUsers + ";" + user.auditName>
                            </#if>
                        </#list>
                        <div class="item">
                            <div class="label">抄送人</div>
                            <div class="value">${ccUsers}</div>
                        </div>
                </#if>
            </div>
            <div class="field-container custom-container">

                <#if (customFields??) && (customFields?size gt 0)>
                    <#list customFields as customField>
                        <#if customField.type !='IMAGE' && customField.type !='VIDEO' && customField.type !='FILE'>
                            <div class="item clearfix">
                                <div class="label">${customField.name}:</div>
                                <div class="value">${customField.value}</div>
                            </div>
                            <#elseif customField.type=='FILE'>
                                <div class="item clearfix">
                                    <div class="label">${customField.name}:</div>
                                    <div class="file-list .file-item">
                                        <#if customField.value ?? && (customField.value?size> 0)>
                                            <#list customField.value as file>

                                                <div class="file-item">
                                                    <div class="name">${file.name}</div>
                                                    <div class="preview-btn">
                                                        <a style="text-decoration: none; color: #1ab370;"
                                                            href="${file.url}">点击预览</a>
                                                    </div>
                                                </div>
                                            </#list>
                                        </#if>
                                    </div>
                                </div>
                                <#elseif customField.type=='VIDEO'>
                                    <div class="item clearfix">
                                        <div class="label">${customField.name}:</div>
                                        <div class="video-list">
                                            <#if customField.value ?? && (customField.value?size> 0)>
                                                <#list customField.value as video>

                                                    <div class="video-item">
                                                        <#if video.thumb?? && video.thumb !="">
                                                            <img src="${video.thumb}" alt="" />
                                                            <#else>
                                                                <img src="https://representative-1252497236.cos.accelerate.myqcloud.com/pdf_html/%E8%A7%86%E9%A2%91%E7%BC%A9%E7%95%A5%E5%9B%BE104px.jpg"
                                                                    alt="" />
                                                        </#if>
                                                        <div class="preview-btn">
                                                            <a style="text-decoration: none; color: #1ab370;"
                                                                href="${video.url}">点击预览</a>
                                                        </div>
                                                    </div>
                                                </#list>
                                            </#if>
                                        </div>
                                    </div>

                                    <!-- 图片 -->
                                    <#elseif customField.type=='IMAGE'>
                                        <div class="item clearfix">
                                            <div class="label">${customField.name}:</div>
                                            <div class="image-list">
                                                <#if customField.value ?? && (customField.value?size> 0)>
                                                    <#list customField.value as img>

                                                        <div class="img-item">
                                                            <img src="${img.url}" alt="" />
                                                        </div>
                                                    </#list>
                                                </#if>
                                            </div>
                                        </div>
                        </#if>
                    </#list>
                </#if>

                <#if nestedName??>
                    <#if nested?? && (nested?size> 0) >
                        <#list nested as customField>
                            <#if customField.type !='IMAGE' && customField.type !='VIDEO' && customField.type !='FILE'>
                                <div class="item clearfix">
                                    <div class="label">${customField.name}:</div>
                                    <div class="value">${customField.value}</div>
                                </div>
                                <#elseif customField.type=='FILE'>
                                    <div class="item clearfix">
                                        <div class="label">${customField.name}:</div>
                                        <div class="file-list .file-item">
                                            <#if customField.value ?? && (customField.value?size> 0)>
                                                <#list customField.value as file>

                                                    <div class="file-item">
                                                        <div class="name">${file.name}</div>
                                                        <div class="preview-btn">
                                                            <a style="text-decoration: none; color: #1ab370;"
                                                                href="${file.url}">点击预览</a>
                                                        </div>
                                                    </div>
                                                </#list>
                                            </#if>
                                        </div>
                                    </div>
                                    <#elseif customField.type=='VIDEO'>
                                        <div class="item clearfix">
                                            <div class="label">${customField.name}:</div>
                                            <div class="video-list">
                                                <#if customField.value ?? && (customField.value?size> 0)>
                                                    <#list customField.value as video>

                                                        <div class="video-item">
                                                            <#if video.thumb?? && video.thumb !="">
                                                                <img src="${video.thumb}" alt="" />
                                                                <#else>
                                                                    <img src="https://representative-1252497236.cos.accelerate.myqcloud.com/pdf_html/%E8%A7%86%E9%A2%91%E7%BC%A9%E7%95%A5%E5%9B%BE104px.jpg"
                                                                        alt="" />
                                                            </#if>
                                                            <div class="preview-btn">
                                                                <a style="text-decoration: none; color: #1ab370;"
                                                                    href="${video.url}">点击预览</a>
                                                            </div>
                                                        </div>
                                                    </#list>
                                                </#if>
                                            </div>
                                        </div>

                                        <!-- 图片 -->
                                        <#elseif customField.type=='IMAGE'>
                                            <div class="item clearfix">
                                                <div class="label">${customField.name}:</div>
                                                <div class="image-list">
                                                    <#if customField.value ?? && (customField.value?size> 0)>
                                                        <#list customField.value as img>

                                                            <div class="img-item">
                                                                <img src="${img.url}" alt="" />
                                                            </div>
                                                        </#list>
                                                    </#if>
                                                </div>
                                            </div>
                            </#if>
                        </#list>
                    </#if>
                </#if>

            </div>
        </div>
    </#escape>
</body>

</html>