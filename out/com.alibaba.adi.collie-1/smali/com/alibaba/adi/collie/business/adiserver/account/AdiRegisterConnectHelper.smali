.class public Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.source "AdiRegisterConnectHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AdiServer.AdiRegisterConnectHelper"


# instance fields
.field private mAndroidVer:Ljava/lang/String;

.field private mClientVer:Ljava/lang/String;

.field private mScreen:Ljava/lang/String;

.field private mTtid:Ljava/lang/String;

.field private mUserTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "baseUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalTTID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mTtid:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mTtid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mTtid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 40
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "AdiServer.AdiRegisterConnectHelper"

    const-string v2, "unable to get TTID from TaoSDK, try to get it manually"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/CoreApplication;->getGlobalTTID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mTtid:Ljava/lang/String;

    .line 47
    :cond_1
    const-string v1, "AdiServer.AdiRegisterConnectHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mTtid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->getUdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 51
    :cond_2
    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->loadUdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 54
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unable to get UserTrackId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_5
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mAndroidVer:Ljava/lang/String;

    .line 57
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 58
    .local v0, size:[I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d*%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mScreen:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mClientVer:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 65
    const-string v1, "appKey"

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mAppKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "ttid"

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mTtid:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "userTrackId"

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mUserTrackId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "deviceSys"

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mAndroidVer:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "screen"

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mScreen:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "clientVer"

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;->mClientVer:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "imei"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
