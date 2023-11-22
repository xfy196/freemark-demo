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
            size: 1100px 12000px;
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

        .table-title {
            margin: 12px 0;
            height: 16px;
            font-size: 14px;
            font-weight: 500;
            color: #333333;
            line-height: 16px;
            padding-left: 10px;
            border-left: 2px solid #1AB370;
        }

        .public-header-tltle {
            color: #333;
            font-size: 24px;
            font-weight: 500;
            position: relative;
            padding-left: 1px;
            display: inline;
        }

        .public-header-tltle-right {
            position: absolute;
            top: 50px;
            right: 0px;
        }

        .public-header-tltle-right-code {
            font-size: 14px;
            font-weight: 500;
            color: #333333;
            line-height: 14px;
            margin-right: 12px;
        }

        .public-header-tltle-right-code-name {
            margin-right: 8px;
        }

        .public-header-tltle-right-tag {
            /* width: 100%;
              height: 100%; */
            width: 36px;
            height: 20px;
            display: inline-block;
            position: relative;
            top: 4px;
        }

        .basic-info {}

        .basicInfo-main-title {
            font-size: 22px;
            font-weight: 500;
            color: #333333;
            line-height: 30px;
        }

        .basicInfo-main-titleFlag {
            width: 60px;
            height: 25px;
            padding: 0px 7px;
            font-size: 12px;
            font-weight: 500;
            line-height: 2;
            color: #ffffff;
            text-align: center;
            background: #1ab370;
            vertical-align: middle;
            display: inline-block;
            margin-bottom: 7px;
        }

        .basicInfo-main-titleFlagNew {
            min-width: 10px;
            padding: 0 6px;
            font-size: 12px;
            font-weight: 500;
            color: #ffffff;
            text-align: center;
            background: #1ab370;
            vertical-align: middle;
        }

        .basicInfo-main-titleC {
            padding-left: 10px;
            font-size: 19px;
        }

        .basicInfo-main-type {
            font-size: 18px;
            font-weight: 400;
            color: #333333;
            padding: 16px 0 24px 0;
        }

        .basicInfo-main-time {
            /* display: flex; */
        }

        .basicInfo-main-timeR {
            width: 36%;
            height: 36px;
            line-height: 36px;
            background: #f9f9f9;
            margin-right: 1%;
            float: left;
        }

        .basicInfo-main-timeR label {
            font-size: 14px;
            font-weight: 500;
            color: #333333;
            float: left;
        }

        .basicInfo-main-timeR span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            float: left;
        }

        .basic-info-main label {
            padding-left: 16px;
        }

        .basic-info-main span {
            padding-left: 8px;
        }

        .basicInfo-main-sponsor {
            clear: both;
            padding-top: 4px;
            padding-bottom: 4px;
        }

        .basicInfo-main-sponsor-C {
            float: left;
            margin-right: 1%;
            background: #f9f9f9;
            width: 49%;
            margin-bottom: 4px;

            min-height: 36px;
            line-height: 36px;
            word-break: break-all;
        }

        .basicInfo-main-sponsor-C label {
            font-size: 14px;
            min-width: 70px;
            font-weight: 500;
            display: block;
            float: left;
        }

        .basicInfo-main-sponsor-C span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            display: block;
        }

        .basicInfo-main-organizer {
            clear: both;
            background: #f9f9f9;
            width: 99%;

            height: 36px;
            line-height: 36px;
        }

        .basicInfo-main-organizer label {
            font-size: 14px;
            min-width: 70px;
            display: block;
            font-weight: 500;
            float: left;
            height: 60px;
        }

        .basicInfo-main-organizer span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            margin-top: 4px;
            background: #f9f9f9;
            display: block;
        }

        .speaker {
            clear: both;
        }

        .speaker-main {
            margin-top: 16px;
        }

        .staff {}

        .attend-info {
            clear: both;
        }

        .attend-info-main {
            margin-top: 16px;
        }

        .attend-info-main-people {
            /* display: flex; */
            height: 36px;
        }

        .attend-info-main-people label,
        .attend-info-main-customer label,
        .attend-info-main-qrcode label,
        .attend-info-main-staff label {
            font-size: 14px;
            color: #333333;
            line-height: 16px;
            padding-left: 16px;
        }

        .attend-info-main-people label,
        .attend-info-main-qrcode label {
            font-weight: 500;
        }

        .customer-one {
            font-weight: 500;
        }

        .attend-info-main-people span,
        .attend-info-main-customer span,
        .attend-info-main-qrcode span,
        .attend-info-main-staff span {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            line-height: 16px;
            padding-left: 8px;
        }

        .people-one,
        .people-two {
            width: 49%;
            height: 36px;
            line-height: 36px;
            background: #f9f9f9;
            margin-right: 1%;
            float: left;
        }

        .attend-info-main-customer {
            width: 99%;
            background: #f9f9f9;
            margin-top: 4px;
        }

        .customer-one,
        .customer-two,
        .customer-there {
            padding-top: 5px
        }

        .attend-info-main-staff {
            width: 99%;
            background: #f9f9f9;
            margin-top: 4px;
        }

        .staff-one,
        .staff-two,
        .staff-there {
            padding-top: 5px
        }

        .staff-one {
            font-weight: 500;
        }

        .attend-info-main-qrcode {
            width: 99%;
            background: #f9f9f9;
            margin-top: 4px;
            height: 36px;
            line-height: 36px;
        }

        .other-info {}

        .other-info-one {
            /* display: flex;
              flex-direction: column; */
            margin-top: 16px;
            width: 100%;
        }

        .other-info-one .info-one-title {
            font-size: 16px;
            font-weight: 500;
            color: #333333;
            line-height: 16px;
        }

        .other-info-one .info-one-desc {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            line-height: 20px;
            padding-top: 8px;
        }

        .other-info-two {
            width: 99%;
            margin-top: 24px;
        }

        .other-info-planMoney {
            font-size: 16px;
            font-weight: 500;
            color: #333333;
            line-height: 16px;
            margin-top: 2px;
            margin-bottom: 8px;
            clear: both;
        }

        .other-info-template {
            margin-top: 24px;
            width: 100%;
        }

        .other-info-template .other-info-T {
            font-size: 16px;
            font-weight: 500;
            color: #333333;
            line-height: 16px;
            margin-bottom: 16px;
        }

        .other-info-template .temp-text {
            margin-bottom: 24px;
            clear: both;
        }

        .temp-text .temp-title {
            font-size: 14px;
            font-weight: 400;
            color: #333333;
            line-height: 20px;
        }

        .temp-text .temp-desc {
            font-size: 14px;
            font-weight: 400;
            color: #666666;
            line-height: 20px;
            margin-top: 8px;
        }

        .temp-text .temp-list {
            margin-top: 8px;
        }

        .temp-text .temp-list .temp-li {
            padding: 0px 14px;
            border: 1px solid #f5f5f5;
            margin-top: 4px;
            height: 36px;
            line-height: 36px;
        }

        .temp-li .temp-li-T {
            display: inline-block;
            width: 90%;
        }

        .temp-li .temp-li-B {
            display: inline-block;
            padding-left: 10px;
        }

        .temp-text .temp-list .temp-li span {
            font-size: 14px;
            font-weight: 400;
            color: #333333;
            line-height: 20px;
        }

        .temp-text .temp-list .temp-li span:last-child {
            color: #1ab370;
            cursor: pointer;
        }

        .temp-mp4 {}

        .temp-mp4-li {
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

        .temp-mp4-li .temp-mp4-img {
            border: 1px solid #f5f5f5;
            width: 104px;
            height: 104px;
        }

        .temp-mp4-li .temp-mp4-btn {
            color: #1ab370;
            cursor: pointer;
            font-size: 14px;
            font-weight: 400;
            line-height: 20px;
            text-align: center;
            padding-top: 8px;
        }

        .temp-mp4-li .temp-mp4-img img {
            width: 100%;
            height: 100%;
        }

        .temp-img-li {
            width: 600px;
            height: 100%;
            margin-top: 16px;
        }

        .temp-img-li img {
            max-width: 100%;
            max-height: 400px;
        }

        .ask {
            clear: both;
        }

        .cloud-recording {
            clear: both;
        }

        .meeting-detail {
            clear: both;
        }

        .meeting-detail th,
        .meeting-detail td {
            font-size: 12px;
        }

        .cloud-recording td:last-child {
            color: #1ab370;
            cursor: pointer;
        }

        .cloud-chart {
            clear: both;
        }

        .img-list {
            width: 100%;
            height: 533px;
            margin-top: 16px;
        }

        .img-list img {
            width: auto;
            height: 100%;
        }

        /* @media only screen and (max-width: 1200px) {
            .basicInfo-main-title {
              align-items: baseline;
            }
          } */
        table {
            width: 100%;
        }

        td {
            border-bottom: 1px solid #f5f5f5;
            padding: 14px 17px 14px 0;
            text-align: left;
            font-size: 14px;
            font-weight: 400;
            color: #333333;
        }

        th {
            text-align: left;
            font-size: 14px;
            font-weight: 500;
            color: #333333;
            line-height: 20px;
            height: 48px;
            background: #EEF7F1;
            border-radius: 4px;
        }

        th:first-child,
        td:first-child {
            padding-left: 20px;
        }

        .picture-item {
            margin-bottom: 10px;
            margin-top: 16px;
        }

        .parent-img {
            text-align: center;
            background: #333;
            padding-top: 1px;
        }

        .pic-img {
            max-height: 400px;
            max-width: 100%;
        }

        .picture-info {
            position: relative;
            top: -21px;
            padding: 7px 14px;
            background: #f5f5f5;
            border-radius: 0px 0px 4px 4px;
            border: 1px solid #eeeeee;
            font-size: 13px;
            color: #666666;
            overflow: hidden;
        }

        .info-left {
            float: left;
            padding-top: 7px;
        }

        .info-right {
            float: right;
            padding: 3px 10px;
            background: #eeeeee;
            border-radius: 18px;
            text-align: center;
            line-height: 28px;
        }

        .split-line {
            display: inline-block;
            position: relative;
            top: 2px;
            width: 1px;
            height: 14px;
            background: #e5e5e5;
            margin: 0 14px;
        }

        .attend-info-main-people,
        .attend-info-main-qrcode,
        .attend-info-main-customer,
        .temp-text,
        .temp-li,
        .temp-img-li,
        .picture-item,
        tr {
            page-break-inside: avoid;
        }


        .approve-container .approve-content {
            position: relative;

        }

        .approve-container .approve-content .approve-box {
            width: 49%;
            position: absolute;
        }

        .approve-container .approve-content .apply {
            left: 0;

        }

        .approve-container .approve-content .closeItem {
            right: 0;

        }


        .approve-panel .approve-item {
            margin-top: 39px;
            position: relative;
            padding-left: 10px;
        }

        .approve-panel .approve-item .approve-item-status {
            float: right;
            text-align: right;
            max-width: 200px;
        }

        .approve-panel .approve-item .approve-item-status .pass {
            font-size: 14px;
            font-weight: 400;
            color: #1AB370;
            line-height: 14px;
        }

        .approve-panel .approve-item .approve-item-status .no-pass {
            font-size: 14px;
            font-weight: 400;

            color: #FF4D4F;
            line-height: 14px;
        }

        .approve-panel .approve-item .approve-item-status .time {
            margin: 8px 0;
        }

        .approve-panel .approve-item .approve-item-status .time,
        .approve-panel .approve-item .approve-item-status .note {
            font-size: 12px;
            font-weight: 400;
            color: #999999;
            line-height: 12px;
        }

        .approve-panel .approve-item:first-child {
            margin-top: 0;
        }

        .approve-panel .approve-item .approve-item-tag {
            height: 100%;
            float: left;
            position: relative;

        }

        .approve-panel .approve-item .approve-item-tag .tag {
            width: 29px;
            font-size: 12px;
            font-weight: 400;
            color: #F89C33;
            background: #F4F4F4;
            padding: 2px 3px;
            border-radius: 2px;
            position: absolute;
            left: 12px;
            top: 8px;

        }

        .approve-panel .approve-item .approve-item-tag .approve-item-schedule {
            position: relative;
        }

        .approve-panel .approve-item .approve-item-tag .approve-item-schedule .approve-item-schedule-progress {
            width: 1px;
            background: #dcdee0;
            border-radius: 1px;
            position: absolute;
            left: 50%;
            top: 9px;
            transform: translateX(-50%);
            border-top-left-radius: 1px;
            border-top-right-radius: 1px;
            border-bottom-right-radius: 1px;
            border-bottom-left-radius: 1px;
        }

        .approve-panel .approve-item .approve-item-tag .approve-item-schedule .approve-item-schedule-progress.has-border {
            top: 11px;
        }

        .approve-panel .approve-item .approve-item-schedule .approve-item-schedule-ball {
            width: 8px;
            height: 8px;
            background: #e5e5e5;
            border-radius: 100%;
            position: absolute;
            margin-top: 12px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 9;
        }

        .approve-panel .approve-item .approve-item-schedule .approve-item-schedule-ball.has-border {
            width: 8px;
            height: 8px;
            background: #F89C33;
            border: 2px solid #FEEBD6;
        }

        .approve-panel .approve-item .approve-item-body {
            float: left;
            margin-left: 52px;
        }

        .approve-panel .approve-item .approve-item-body .person-item {
            float: left;
            width: 32px;
            text-align: center;
            margin-left: 20px;
            margin-bottom: 7px;
        }

        .approve-panel .approve-item .approve-item-body .person-item.no-margin-left {
            margin-left: 0;
        }

        .approve-panel .approve-item .approve-item-body .person-item .avatar {
            width: 32px;
            height: 32px;
        }

        .approve-panel .approve-item .approve-item-body .person-item .person-name {
            margin-top: 5px;
            font-size: 11px;
            font-weight: 400;
            color: #333333;
            line-height: 16px;
        }
    </style>
</head>

<body>

    <#escape x as x?html>
        <div class="container">
            <div class="container-all">
                <div class="basic-info">
                    <div class="public-header">
                        <span class="public-header-tltle"><a
                                style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                            基础信息</span>
                        <span class="public-header-tltle-right">
                            <#if supplement?? && supplement==true>
                                <!-- v6.4 补录标记配置 -->
                                <#if supplementEnable?? && supplementEnable==true>
                                    <!-- <div class="public-header-tltle-right-tag">补录</div> -->
                                    <div class="public-header-tltle-right-tag">
                                        <!-- <div style="width: 100%; height: 100%; display: inline;"> -->
                                        <img width="100%" height="100%" style="width: 100%; height: 100%"
                                            src="https://representative-1252497236.cos.ap-beijing.myqcloud.com/static/schedule-management/repair-record.png" />
                                        <!-- </div> -->
                                    </div>
                                </#if>
                            </#if>
                        </span>
                    </div>

                    <div class="basic-info-main pt16">
                        <div class="basicInfo-main-title">
                            <#if onlineMeetingEnable?? && onlineMeetingEnable==true>
                                <span class="basicInfo-main-titleFlag">线上会议</span>
                            </#if>
                            <span class="basicInfo-main-titleC">
                                ${topic}
                            </span>
                        </div>
                        <div class="basicInfo-main-type">
                            会议类型：${meetingTypeName}
                        </div>
                        <div class="basicInfo-main-time">
                            <div class="basicInfo-main-timeR">
                                <label>计划时间：</label>
                                <span>${planTime!''}</span>
                            </div>
                            <div class="basicInfo-main-timeR">
                                <label>实际时间：</label>
                                <span>${manualTime!''}</span>
                            </div>
                            <#if durationFormat?? && durationFormat!=''>
                                <div style="width: 25%;margin-right: 0;" class="basicInfo-main-timeR">
                                    <label>会议时长：</label>
                                    <span>${durationFormat}</span>
                                </div>
                            </#if>
                        </div>
                        <div class="basicInfo-main-sponsor">
                            <div class="basicInfo-main-sponsor-C">
                                <label>发起人：</label>
                                <span>${creator.name} ${creator.deptName}</span>
                            </div>
                            <div class="basicInfo-main-sponsor-C">
                                <label>负责人：</label>
                                <span>${staffInCharge.name} ${staffInCharge.deptName}</span>
                            </div>
                        </div>
                        <#if organiser?? && organiser!=''>
                            <div class="basicInfo-main-organizer">
                                <label>协办人：</label>
                                <span>${organiser}</span>
                            </div>
                        </#if>
                    </div>
                </div>


                <#if speakers?? && (speakers?size> 0) >
                    <div class="speaker">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・
                                </a>讲者</span>
                        </div>
                        <div class="speaker-main">
                            <table style="border-collapse: collapse">
                                <tr>
                                    <th width="100">序号</th>
                                    <th>姓名</th>
                                    <th>机构名称</th>
                                    <#if speakers.displayDeptColumn==true>
                                        <th>${speakers.computedDeptName!''}</th>
                                    </#if>
                                    <#if speakers.displayTitleColumn==true>
                                        <th>${speakers.computedTitleName!''}</th>
                                    </#if>
                                </tr>
                                <#if speakers.data?? && (speakers.data?size> 0) >
                                    <#list speakers.data as speaker>
                                        <tr>
                                            <td>${speaker_index+1}</td>
                                            <td>
                                                ${speaker.name}
                                            </td>
                                            <td>
                                                ${speaker.hospitalName!''}
                                            </td>
                                            <#if speakers.displayDeptColumn==true>
                                                <td>
                                                    ${speaker.hospitalDeptName!''}
                                                </td>
                                            </#if>
                                            <#if speakers.displayTitleColumn==true>
                                                <td>
                                                    ${speaker.titleName!''}
                                                </td>
                                            </#if>
                                        </tr>
                                    </#list>
                                </#if>
                            </table>
                        </div>
                    </div>
                </#if>

                <#if staffSpeaker?? && (staffSpeaker?size> 0) >
                    <div class="staff">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                讲课员工</span>
                        </div>
                        <div class="speaker-main">
                            <table style="border-collapse: collapse">
                                <tr>
                                    <th width="100">序号</th>
                                    <th>姓名</th>
                                    <th>辖区</th>
                                    <th>职务</th>
                                </tr>
                                <#list staffSpeaker as staffSpeak>
                                    <tr>
                                        <td>${staffSpeak_index+1}</td>
                                        <td>
                                            ${staffSpeak.name!''}
                                        </td>
                                        <td>
                                            ${staffSpeak.deptName!''}
                                        </td>
                                        <td>
                                            ${staffSpeak.position!''}
                                        </td>
                                    </tr>
                                </#list>
                            </table>
                        </div>
                    </div>
                </#if>

                <#if showParticipant??>
                    <div class="attend-info">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                参会信息</span>
                        </div>
                        <div class="attend-info-main">
                            <#if attendanceAddress?? && attendanceAddress!=''>
                                <div class="attend-info-main-qrcode">
                                    <label>签到二维码定位地址：</label>
                                    <span>${attendanceAddress}</span>
                                </div>
                            </#if>
                            <#if statistics?? &&(statistics.uniqCustomerCount !=0 || statistics.attendanceCount !=0 ||
                                statistics.onlineCustomerCount !=0 )>
                                <div class="attend-info-main-customer">
                                    <#if statistics.uniqCustomerCount?? && statistics.uniqCustomerCount !=0>
                                        <div class="customer-one">
                                            <label>参会客户：</label>
                                            <span>${statistics.uniqCustomerCount}人</span>
                                        </div>
                                    </#if>
                                    <#if statistics.attendanceCount?? && statistics.attendanceCount !=0>
                                        <div class="customer-two">
                                            <label>签到客户：</label>
                                            <span>${statistics.attendanceCount}人</span>
                                        </div>
                                    </#if>
                                    <#if statistics.onlineCustomerCount?? && statistics.onlineCustomerCount !=0>
                                        <div class="customer-there">
                                            <label>在线客户：</label>
                                            <span>${statistics.onlineCustomerCount}人 ｜
                                                客户平均在线时长：${statistics.avgDuration}</span>
                                        </div>
                                    </#if>
                                </div>
                            </#if>
                            <#if statistics?? &&(statistics.uniqRepCount !=0 || statistics.attendanceRepCount !=0 ||
                                statistics.onlineRepCount !=0 )>
                                <div class="attend-info-main-staff">
                                    <#if statistics.uniqRepCount?? && statistics.uniqRepCount !=0>
                                        <div class="staff-one">
                                            <label>参会员工：</label>
                                            <span>${statistics.uniqRepCount}人</span>
                                        </div>
                                    </#if>
                                    <#if statistics.attendanceRepCount?? && statistics.attendanceRepCount !=0>
                                        <div class="staff-two">
                                            <label>签到员工：</label>
                                            <span>${statistics.attendanceRepCount}人</span>
                                        </div>
                                    </#if>
                                    <#if statistics.onlineRepCount?? && statistics.onlineRepCount !=0>
                                        <div class="staff-there">
                                            <label>在线员工：</label>
                                            <span>${statistics.onlineRepCount}人 ｜
                                                员工平均在线时长：${statistics.avgDurationRep}</span>
                                        </div>
                                    </#if>
                                </div>
                            </#if>
                        </div>
                    </div>
                </#if>



                <#if customFields?? || product?? || planExpense?? || actualExpense?? || nestedName??>
                    <div class="other-info">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                其他信息</span>
                        </div>

                        <div class="other-info-template">
                            <#if customFields ??>
                                <#list customFields as custom>
                                    <#if custom.type !='IMAGE' && custom.type !='VIDEO' && custom.type !='FILE'>
                                        <div class="temp-text">
                                            <div class="temp-title"
                                                style="font-size: 16px; font-weight: 500; color: #333333;">
                                                ${custom.name}：
                                            </div>
                                            <div class="temp-desc"
                                                style="font-size: 14px; font-weight: 400; color: #666666;">
                                                ${custom.value}
                                            </div>
                                        </div>
                                    </#if>

                                    <#if custom.type=='FILE'>
                                        <div class="temp-text">
                                            <div class="temp-title"
                                                style="font-size: 16px; font-weight: 500; color: #333333;">
                                                ${custom.name}
                                                ：
                                            </div>
                                            <div class="temp-list">
                                                <#if custom.value ?? && (custom.value?size> 0)>
                                                    <#list custom.value as file>
                                                        <div class="temp-li">
                                                            <span class="temp-li-T">
                                                                ${file.name}
                                                            </span>
                                                            <span class="temp-li-B">
                                                                <a style="text-decoration: none; color: #1ab370;"
                                                                    href="${file.url}">点击预览</a>
                                                            </span>
                                                        </div>
                                                    </#list>
                                                </#if>
                                            </div>
                                        </div>
                                    </#if>

                                    <#if custom.type=='VIDEO'>
                                        <div class="temp-text">
                                            <div class="temp-title"
                                                style="font-size: 16px; font-weight: 500; color: #333333;">
                                                ${custom.name}
                                                ：
                                            </div>
                                            <div class="temp-mp4">
                                                <#if custom.value ?? && (custom.value?size> 0)>
                                                    <#list custom.value as video>
                                                        <div class="temp-mp4-li">
                                                            <div class="temp-mp4-img">
                                                                <#if video.thumb?? && video.thumb !="">
                                                                    <img src="${video.thumb}" alt="" />
                                                                    <#else>
                                                                        <img src="https://representative-1252497236.cos.ap-beijing.myqcloud.com/pdf_html/%E8%A7%86%E9%A2%91%E7%BC%A9%E7%95%A5%E5%9B%BE104px.jpg"
                                                                            alt="" />
                                                                </#if>
                                                            </div>
                                                            <div class="temp-mp4-btn">
                                                                <a style="text-decoration: none; color: #1ab370;"
                                                                    href="${video.url}">点击预览</a>
                                                            </div>
                                                        </div>
                                                    </#list>
                                                </#if>
                                            </div>
                                        </div>
                                    </#if>

                                    <#if custom.type=='IMAGE'>
                                        <div class="temp-text">
                                            <div class="temp-title"
                                                style="font-size: 16px; font-weight: 500; color: #333333;">
                                                ${custom.name}
                                                ：
                                            </div>
                                            <div class="temp-img">
                                                <#if custom.value ?? && (custom.value?size> 0)>
                                                    <#list custom.value as image>
                                                        <div class="temp-img-li">
                                                            <img src="${image.url}" alt="" />
                                                        </div>
                                                    </#list>
                                                </#if>
                                            </div>
                                        </div>
                                    </#if>

                                </#list>
                            </#if>
                        </div>

                        <#if nestedName??>
                            <div class="other-info-template">
                                <div class="other-info-T">${nestedName}</div>

                                <#if nested?? && (nested?size> 0) >
                                    <#list nested as item>
                                        <#if item.type !='IMAGE' && item.type !='VIDEO' && item.type !='FILE'>
                                            <div class="temp-text">
                                                <div class="temp-title">
                                                    ${item.name}：
                                                </div>
                                                <div class="temp-desc">
                                                    ${item.value}
                                                </div>
                                            </div>
                                        </#if>

                                        <#if item.type=='FILE'>
                                            <div class="temp-text">
                                                <div class="temp-title">${item.name}：</div>
                                                <div class="temp-list">
                                                    <#if item.value ?? && (item.value?size> 0)>
                                                        <#list item.value as file>
                                                            <div class="temp-li">
                                                                <span class="temp-li-T">
                                                                    ${file.name}
                                                                </span>
                                                                <span class="temp-li-B">
                                                                    <a style="text-decoration: none; color: #1ab370;"
                                                                        href="${file.url}">点击预览</a>
                                                                </span>
                                                            </div>
                                                        </#list>
                                                    </#if>
                                                </div>
                                            </div>
                                        </#if>

                                        <#if item.type=='VIDEO'>
                                            <div class="temp-text">
                                                <div class="temp-title">${item.name}：</div>
                                                <div class="temp-mp4">
                                                    <#if item.value ?? && (item.value?size> 0)>
                                                        <#list item.value as video>
                                                            <div class="temp-mp4-li">
                                                                <div class="temp-mp4-img">
                                                                    <#if video.thumb?? && video.thumb !="">
                                                                        <img src="${video.thumb}" alt="" />
                                                                        <#else>
                                                                            <img src="https://representative-1252497236.cos.ap-beijing.myqcloud.com/pdf_html/%E8%A7%86%E9%A2%91%E7%BC%A9%E7%95%A5%E5%9B%BE104px.jpg"
                                                                                alt="" />
                                                                    </#if>
                                                                </div>
                                                                <div class="temp-mp4-btn">
                                                                    <a style="text-decoration: none; color: #1ab370;"
                                                                        href="${video.url}">点击预览</a>
                                                                </div>
                                                            </div>
                                                        </#list>
                                                    </#if>
                                                </div>
                                            </div>
                                        </#if>
                                        <#if item.type=='IMAGE'>
                                            <div class="temp-text">
                                                <div class="temp-title">图片：</div>
                                                <div class="temp-img">
                                                    <#if item.value ?? && (item.value?size> 0)>
                                                        <#list item.value as image>
                                                            <div class="temp-img-li">
                                                                <img src="${image.url}" alt="" />
                                                            </div>
                                                        </#list>
                                                    </#if>
                                                </div>
                                            </div>
                                        </#if>

                                    </#list>
                                </#if>
                            </div>
                        </#if>
                    </div>
                </#if>

                <#if questionnaires?? && (questionnaires?size> 0)>
                    <div class="ask">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                问卷</span>
                        </div>
                        <div class="speaker-main">
                            <table style="border-collapse: collapse">
                                <tr>
                                    <th width="100">序号</th>
                                    <th>问卷名称</th>
                                    <th width="120">已征集数量</th>
                                </tr>
                                <#list questionnaires as questionnaire>
                                    <tr>
                                        <td>${questionnaire_index+1}</td>
                                        <td>${questionnaire.questionnaireName}</td>
                                        <td>${questionnaire.recordCount}</td>
                                    </tr>
                                </#list>
                            </table>
                        </div>
                    </div>
                </#if>

                <#if cloudRecords?? && (cloudRecords?size> 0) >
                    <div class="cloud-recording">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                云端录制</span>
                        </div>
                        <div class="speaker-main">
                            <table style="border-collapse: collapse">
                                <tr>
                                    <th width="100">序号</th>
                                    <th>文件名</th>
                                    <th width="120">时长</th>
                                    <th width="100">文件大小</th>
                                    <th width="100">操作</th>
                                </tr>
                                <#list cloudRecords as cloudRecord>
                                    <tr>
                                        <td>${cloudRecord_index+1}</td>
                                        <td>
                                            ${cloudRecord.fileName}
                                        </td>
                                        <td>${cloudRecord.durationStr}</td>
                                        <td>${(cloudRecord.fileSize/1024/1024)?string("#.##")}MB</td>
                                        <td><a style="text-decoration: none; color: #1ab370;"
                                                href="${cloudRecord.url}">点击预览</a></td>
                                    </tr>
                                </#list>
                            </table>
                        </div>
                    </div>
                </#if>

                <#if screenshots?? && (screenshots?size> 0) >
                    <div class="cloud-chart">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                云端截图</span>
                        </div>
                        <div class="cloud-chart-img">
                            <#list screenshots as screenshot>
                                <div class="picture-item">
                                    <div class="parent-img">
                                        <img class="pic-img" src="${screenshot.url}" alt="" />
                                    </div>
                                </div>
                                <div class="picture-info">
                                    <div class="info-left">
                                        <span>截图人：${screenshot.author}</span>
                                        <span class="split-line"> </span>
                                        <span class="">截图时间：${screenshot.time}</span>
                                    </div>
                                    <div class="info-right">
                                        参会人员：${statistics.attendeePeopleCount}</div>
                                </div>
                            </#list>
                        </div>
                    </div>
                </#if>
                <#if attendanceDoctor?? && (attendanceDoctor?size> 0) >
                    <div class="meeting-detail">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>参会医生明细</span>
                        </div>
                        <div class="speaker-main">
                            <table style="border-collapse: collapse">
                                <tr>
                                    <#list cnAttendanceDoctorHeaders as attendanceDoctorHeader>
                                        <th width="80">${attendanceDoctorHeader}</th>
                                    </#list>
                                </tr>
                                <#list attendanceDoctor as attendanceDoc>
                                    <tr>
                                        <#if enAttendanceDoctorHeaders?seq_contains('planCode')>
                                            <td>${planCode}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('topic')>
                                            <td>${topic}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('planDate')>
                                            <td>${planDate}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('name')>
                                            <td>${attendanceDoc.name!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('organization')>
                                            <td>${attendanceDoc.organization!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('dept')>
                                            <td>${attendanceDoc.dept!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('title')>
                                            <td>${attendanceDoc.title!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('province')>
                                            <td>${attendanceDoc.province!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('city')>
                                            <td>${attendanceDoc.city!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('joinTime')>
                                            <td>${attendanceDoc.joinTime!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('exitTime')>
                                            <td>${attendanceDoc.exitTime!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('joinNumber')>
                                            <td>${attendanceDoc.joinNumberStr!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('duration')>
                                            <td>${attendanceDoc.durationStr!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('sign')>
                                            <td>${attendanceDoc.sign!''}</td>
                                        </#if>
                                        <#if enAttendanceDoctorHeaders?seq_contains('signType')>
                                            <td>${attendanceDoc.signType!''}</td>
                                        </#if>
                                    </tr>
                                </#list>
                            </table>
                        </div>
                    </div>
                </#if>

                <!-- 参会员工 -->
                <#if attendanceStaff?? && (attendanceStaff?size> 0) >
                    <div class="meeting-detail">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>参会员工明细</span>
                        </div>
                        <div class="speaker-main">
                            <table style="border-collapse: collapse">
                                <tr>
                                    <#list cnAttendanceStaffHeaders as attendanceStaffHeader>
                                        <th width="80">${attendanceStaffHeader}</th>
                                    </#list>
                                </tr>
                                <#list attendanceStaff as staff>
                                    <tr>
                                        <#if enAttendanceStaffHeaders?seq_contains('planCode')>
                                            <td>${planCode}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('topic')>
                                            <td>${topic}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('planDate')>
                                            <td>${planDate}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('name')>
                                            <td>${staff.name!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('userId')>
                                            <td>${staff.userId!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('dept')>
                                            <td>${staff.deptName!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('position')>
                                            <td>${staff.position!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('joinTime')>
                                            <td>${staff.joinTimeStr!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('exitTime')>
                                            <td>${staff.exitTimeStr!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('joinNumber')>
                                            <td>${staff.joinNumber!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('duration')>
                                            <td>${staff.durationStr!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('sign')>
                                            <td>${staff.sign!''}</td>
                                        </#if>
                                        <#if enAttendanceStaffHeaders?seq_contains('signType')>
                                            <td>${staff.signType!''}</td>
                                        </#if>
                                    </tr>
                                </#list>
                            </table>
                        </div>
                    </div>
                </#if>


                <!-- 执行标准 -->

                <#if executeStandards?? && (executeStandards?size> 0) >
                    <div class="ask">
                        <div class="public-header">
                            <span class="public-header-tltle"><a
                                    style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                                执行标准</span>
                        </div>


                        <#list 0..(executeStandards?size-1) as i>
                            <!-- 参会人数 -->
                            <#if i==0 && (executeStandards[i].executionStandardType=='NUMBER_OF_ATTENDING_DOCTORS' ||
                                executeStandards[i].executionStandardType=='MAXIMUM_PARTICIPANTS_PER_DOCTOR_PER_DEPARTMENT'
                                )>
                                <div class="table-title">参会人数</div>
                                <div class="speaker-main">
                                    <table style="border-collapse: collapse">
                                        <tr>
                                            <th width="240">内容</th>
                                            <th width="180">标准</th>
                                            <th>实际</th>
                                            <th width="120">是否达标</th>
                                        </tr>
                                        <#list executeStandards as executeStandard>
                                            <#if executeStandard.executionStandardType=='NUMBER_OF_ATTENDING_DOCTORS'>
                                                <tr>
                                                    <td>参会医生人数</td>
                                                    <td>${executeStandard.standardValue!}</td>
                                                    <td>${executeStandard.actualValue!}</td>
                                                    <td>
                                                        <#if executeStandard.isSatisfied?? &&
                                                            executeStandard.isSatisfied>
                                                            <span style="color: #1AB370;">达标</span>
                                                        </#if>
                                                        <#if executeStandard.isSatisfied?? &&
                                                            !executeStandard.isSatisfied>
                                                            <span style="color: #FF4D4F;">未达标</span>
                                                        </#if>
                                                    </td>
                                                </tr>
                                            </#if>
                                            <#if
                                                executeStandard.executionStandardType=='MAXIMUM_PARTICIPANTS_PER_DOCTOR_PER_DEPARTMENT'>
                                                <tr>
                                                    <td>单医院单科室最多参会人数</td>
                                                    <td>${executeStandard.standardValue!}</td>
                                                    <td>${executeStandard.actualValue!}</td>
                                                    <td>
                                                        <#if executeStandard.isSatisfied?? &&
                                                            executeStandard.isSatisfied>
                                                            <span style="color: #1AB370;">达标</span>
                                                        </#if>
                                                        <#if executeStandard.isSatisfied?? &&
                                                            !executeStandard.isSatisfied>
                                                            <span style="color: #FF4D4F;">未达标</span>
                                                        </#if>
                                                    </td>
                                                </tr>
                                            </#if>
                                        </#list>
                                    </table>
                                </div>

                                <!-- 参会频率 -->
                                <#elseif
                                    executeStandards[i].executionStandardType=='MAXIMUM_ATTENDANCE_COUNT_FOR_DOCTOR_WITHIN30_DAYS'>
                                    <div class="table-title">参会频率</div>
                                    <div class="speaker-main">
                                        <table style="border-collapse: collapse">
                                            <tr>
                                                <th width="240">内容</th>
                                                <th width="180">标准</th>
                                                <th>实际</th>
                                                <th width="120">是否达标</th>
                                            </tr>
                                            <tr>
                                                <td>医生近30天参会次数上限</td>
                                                <td>${executeStandards[i].standardValue!}</td>
                                                <td>${executeStandards[i].actualValue!}</td>
                                                <td>
                                                    <#if executeStandards[i].isSatisfied?? &&
                                                        executeStandards[i].isSatisfied>
                                                        <span style="color: #1AB370;">达标</span>
                                                    </#if>
                                                    <#if executeStandards[i].isSatisfied?? &&
                                                        !executeStandards[i].isSatisfied>
                                                        <span style="color: #FF4D4F;">未达标</span>
                                                    </#if>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- 讲者 -->
                                    <#elseif
                                        executeStandards[i].executionStandardType=='MAXIMUM_LECTURE_COUNT_PER_YEAR'>
                                        <div class="table-title">讲者</div>
                                        <div class="speaker-main">
                                            <table style="border-collapse: collapse">
                                                <tr>
                                                    <th width="240">内容</th>
                                                    <th width="180">标准</th>
                                                    <th>实际</th>
                                                    <th width="120">是否达标</th>
                                                </tr>
                                                <tr>
                                                    <td>年讲课数量上限</td>
                                                    <td>${executeStandards[i].standardValue!}</td>
                                                    <td>${executeStandards[i].actualValue}</td>
                                                    <td>
                                                        <#if executeStandards[i].isSatisfied?? &&
                                                            executeStandards[i].isSatisfied>
                                                            <span style="color: #1AB370;">达标</span>
                                                        </#if>
                                                        <#if executeStandards[i].isSatisfied?? &&
                                                            !executeStandards[i].isSatisfied>
                                                            <span style="color: #FF4D4F;">未达标</span>
                                                        </#if>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                            </#if>
                        </#list>




                    </div>
                </#if>


                <div class="approve-container">
                    <div class="public-header">
                        <span class="public-header-tltle"><a
                                style="pointer-events:none; color:#1ab370; font-size:30px;">・</a>
                            会议审批进度</span>
                    </div>
                    <div class="approve-content">
                        <div class="apply approve-box">

                            <div class="head table-title">申请审批</div>

                            <div class="approve-panel">

                                <#list audit.approve as auditData>
                                    <div class="approve-item clearfix">

                                        <div class="approve-item-tag">
                                            <#assign sizeRoundedUp=(((auditData.people?size - 1)!0) / 4 + 1)?floor>
                                                <div class="approve-item-schedule">
                                             

                                                    <div
                                                        class="approve-item-schedule-ball<#if auditData.status == true>  has-border</#if>">
                                                        <#if (audit.approve?size> 0 && auditData?index != audit.approve?size
                                                        - 1)>

                                                        <div style="height: ${sizeRoundedUp * 60 + (auditData.status?then(25, 28))}px"
                                                            class="approve-item-schedule-progress <#if auditData.status == true>  has-border</#if>">
                                                        </div>
                                                    </#if>
                                                    </div>

                                                </div>

                                                <div class="tag">
                                                    ${auditData.type}
                                                </div>

                                        </div>
                                        <div class="approve-item-body">
                                            <#if auditData.people??>
                                                <#list auditData.people as people>
                                                    <div
                                                        class="person-item  <#if (people?index % 4) == 0> clear-left no-margin-left</#if>">

                                                        <div class="avatar">

                                                            <img src="${people.avatar}" alt="" />

                                                        </div>

                                                        <div class="person-name">${people.name}</div>

                                                    </div>
                                                </#list>
                                            </#if>
                                        </div>

                                        <div class="approve-item-status clearfix">
                                            <#if auditData.status==true>
                                                <div class="pass">审批通过</div>

                                                <#else>
                                                    <div class="no-pass">审批不通过</div>

                                            </#if>
                                            <div class="time">${date?number_to_datetime?string("yyyy年MM月dd日 HH:mm")}</div>
                                            <div class="note">${auditData.note}</div>

                                        </div>
                                    </div>
                                </#list>
                            </div>

                        </div>
                        <div class="closeItem approve-box">

                            <div class="head table-title">结项审批</div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </#escape>
</body>

</html>