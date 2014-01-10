.class public Landroid/taobao/apirequest/ApiResMonitor;
.super Ljava/lang/Object;
.source "ApiResMonitor.java"


# static fields
.field static ignoreErro:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ALREADY_COLLECT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ER_PARAM_DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ER_BIZ_BIND_USER_WITHOUT_USERINFO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ERR_SID_INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ERRCODE_AUTH_REJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ERRCODE_NOTIFY_TOO_MANY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ERROR_PARAM_DEVICE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FAIL::\u767b\u5f55\u5931\u8d25"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "INVALID_TOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NO_RATES"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PUSH_TOKEN_CHECK_INVALID"

    aput-object v2, v0, v1

    sput-object v0, Landroid/taobao/apirequest/ApiResMonitor;->ignoreErro:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static report(Landroid/taobao/apirequest/ApiResult;Ljava/lang/String;)V
    .locals 6
    .parameter "res"
    .parameter "apiUrl"

    .prologue
    .line 64
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiResult;->isApiSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Landroid/taobao/apirequest/ApiResMonitor;->ignoreErro:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 74
    iget-object v1, p0, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    sget-object v2, Landroid/taobao/apirequest/ApiResMonitor;->ignoreErro:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const-string v1, "Page_ImgStat"

    sget v2, Landroid/taobao/common/SDKConstants;->ID_PAGE_APROXY_ERROR:I

    iget-object v3, p0, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiResult;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
