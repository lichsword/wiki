.class public Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;
.super Ljava/lang/Object;
.source "VersionUpgradeConnectHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# static fields
.field private static API_NAME:Ljava/lang/String; = null

.field public static final SERVICE_ERR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VersionUpgradeConnectHelper"


# instance fields
.field private final ANDROID_VERSION:Ljava/lang/String;

.field private final CURRENT_VERSION_MD5:Ljava/lang/String;

.field private final GROUP:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field private final NET_STATUS:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private final mClientName:Ljava/lang/String;

.field private final mGroup:Ljava/lang/String;

.field private mNetStatus:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "mtop.atlas.getBaseUpdateList"

    sput-object v0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/adi/collie/util/NetworkUtil$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "version"
    .parameter "networkType"
    .parameter "clientName"
    .parameter "group"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "androidVersion"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->ANDROID_VERSION:Ljava/lang/String;

    .line 27
    const-string v0, "version"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->VERSION:Ljava/lang/String;

    .line 28
    const-string v0, "netStatus"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->NET_STATUS:Ljava/lang/String;

    .line 29
    const-string v0, "group"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->GROUP:Ljava/lang/String;

    .line 30
    const-string v0, "md5"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->CURRENT_VERSION_MD5:Ljava/lang/String;

    .line 32
    const-string v0, "name"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->NAME:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mVersion:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mGroup:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mClientName:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->WIFI:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-ne p2, v0, :cond_0

    .line 49
    const-string v0, "10"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mNetStatus:Ljava/lang/String;

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/util/NetworkUtil$Type;->G3:Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    if-ne p2, v0, :cond_1

    .line 51
    const-string v0, "2"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mNetStatus:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "1"

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mNetStatus:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    new-instance v0, Landroid/taobao/apirequest/TaoApiRequest;

    invoke-direct {v0}, Landroid/taobao/apirequest/TaoApiRequest;-><init>()V

    .line 60
    .local v0, request:Landroid/taobao/apirequest/TaoApiRequest;
    const-string v2, "api"

    sget-object v3, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "t"

    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getInstance()Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getMtopCorrectedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "v"

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "androidVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "netStatus"

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mNetStatus:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "group"

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "name"

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "version"

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/taobao/apirequest/TaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/TaoApiRequest;->generalRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, requestUrl:Ljava/lang/String;
    const-string v2, "VersionUpgradeConnectHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upgrade url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v1
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 9
    .parameter "all"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 75
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v5

    .line 80
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .local v4, str:Ljava/lang/String;
    const-string v6, "VersionUpgradeConnectHelper"

    invoke-static {v6, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    new-instance v3, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v3}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 90
    .local v3, response:Landroid/taobao/apirequest/ApiResponse;
    new-instance v5, Lcom/alibaba/adi/collie/model/UpdateInfo;

    invoke-direct {v5}, Lcom/alibaba/adi/collie/model/UpdateInfo;-><init>()V

    .line 91
    .local v5, updateInfo:Lcom/alibaba/adi/collie/model/UpdateInfo;
    invoke-virtual {v3, v4}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v6

    iget-boolean v6, v6, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v6, :cond_b

    .line 93
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    move-result-object v6

    iget-object v2, v6, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    .line 94
    .local v2, jsObj:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 95
    .local v1, hasUpdate:Z
    const-string v6, "hasAvailableUpdate"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    const-string v6, "true"

    const-string v7, "hasAvailableUpdate"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    iput-boolean v1, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->hasUpdate:Z

    .line 99
    :cond_2
    if-eqz v1, :cond_0

    .line 100
    const-string v6, "updateInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 101
    const-string v6, "updateInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 102
    const-string v6, "url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    const-string v6, "url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkDLUrl:Ljava/lang/String;

    .line 104
    :cond_3
    const-string v6, "patchUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    const-string v6, "patchUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mPatchDLUrl:Ljava/lang/String;

    .line 106
    :cond_4
    const-string v6, "size"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 107
    const-string v6, "size"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkSize:J

    .line 108
    :cond_5
    const-string v6, "patchSize"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 109
    const-string v6, "patchSize"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mPatchSize:J

    .line 110
    :cond_6
    const-string v6, "md5"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 111
    const-string v6, "md5"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mNewApkMD5:Ljava/lang/String;

    .line 112
    :cond_7
    const-string v6, "pri"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 113
    const-string v6, "pri"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mPriority:I

    .line 114
    :cond_8
    const-string v6, "version"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 115
    const-string v6, "version"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mVersion:Ljava/lang/String;

    .line 116
    :cond_9
    const-string v6, "info"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    const-string v6, "info"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mNotifyTip:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 121
    .end local v1           #hasUpdate:Z
    .end local v2           #jsObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Lorg/json/JSONException;
    iput v8, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mErrCode:I

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 81
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #response:Landroid/taobao/apirequest/ApiResponse;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #updateInfo:Lcom/alibaba/adi/collie/model/UpdateInfo;
    :catch_1
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #hasUpdate:Z
    .restart local v2       #jsObj:Lorg/json/JSONObject;
    .restart local v3       #response:Landroid/taobao/apirequest/ApiResponse;
    .restart local v4       #str:Ljava/lang/String;
    .restart local v5       #updateInfo:Lcom/alibaba/adi/collie/model/UpdateInfo;
    :cond_a
    const/4 v6, -0x1

    :try_start_2
    iput v6, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mErrCode:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 126
    .end local v1           #hasUpdate:Z
    .end local v2           #jsObj:Lorg/json/JSONObject;
    :cond_b
    iput v8, v5, Lcom/alibaba/adi/collie/model/UpdateInfo;->mErrCode:I

    goto/16 :goto_0
.end method
