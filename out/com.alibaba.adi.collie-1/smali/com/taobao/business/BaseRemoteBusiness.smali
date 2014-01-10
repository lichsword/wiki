.class public Lcom/taobao/business/BaseRemoteBusiness;
.super Lcom/taobao/business/BaseBusiness;
.source "BaseRemoteBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/business/BaseRemoteBusiness$ApiContextBatchWrapper;,
        Lcom/taobao/business/BaseRemoteBusiness$ApiContextWrapper;,
        Lcom/taobao/business/BaseRemoteBusiness$MessageWrapper;,
        Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;,
        Lcom/taobao/business/BaseRemoteBusiness$RequestMode;
    }
.end annotation


# static fields
.field public static final MSG_RQS_ARRIVED:I = 0x0

.field public static final REQ_TYPE_INVALID:I = -0x1


# instance fields
.field protected BASE_URL:Ljava/lang/String;

.field protected mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/taobao/business/BaseBusiness;-><init>(Landroid/app/Application;)V

    .line 38
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/common/SDKConfig;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/business/BaseRemoteBusiness;->BASE_URL:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public cancelRequest(Landroid/taobao/apirequest/ApiID;)V
    .locals 0
    .parameter "apiId"

    .prologue
    .line 51
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/business/BaseRemoteBusiness;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    .line 61
    invoke-super {p0}, Lcom/taobao/business/BaseBusiness;->destroy()V

    .line 62
    return-void
.end method

.method public retryRequest(Landroid/taobao/apirequest/ApiID;)V
    .locals 0
    .parameter "apiId"

    .prologue
    .line 47
    return-void
.end method

.method public setRemoteBusinessRequestListener(Lcom/taobao/business/IRemoteBusinessRequestListener;)V
    .locals 0
    .parameter "iRemoteBusinessRequestListener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/taobao/business/BaseRemoteBusiness;->mRequestListener:Lcom/taobao/business/IRemoteBusinessRequestListener;

    .line 43
    return-void
.end method
