.class public Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;
.source "AdiAppGetConnectHelper.java"


# instance fields
.field mStartTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "startTime"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;->mStartTime:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "eCode"
    .parameter "appKey"
    .parameter "passwd"
    .parameter "startTime"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p8, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;->mStartTime:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 36
    const-string v0, "start"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;->mStartTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "starttime"

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;->mStartTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 3
    .parameter "all"

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 29
    const/4 v1, 0x0

    goto :goto_0
.end method
