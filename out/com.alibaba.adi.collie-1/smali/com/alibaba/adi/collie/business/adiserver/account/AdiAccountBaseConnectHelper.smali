.class public abstract Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;
.source "AdiAccountBaseConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;
    }
.end annotation


# instance fields
.field protected parseData:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->parseData:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "ecode"
    .parameter "appKey"
    .parameter "passwd"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->parseData:Z

    .line 24
    return-void
.end method


# virtual methods
.method public syncPaser([B)Ljava/lang/Object;
    .locals 5
    .parameter "all"

    .prologue
    const/4 v3, 0x0

    .line 34
    :try_start_0
    new-instance v1, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;-><init>(Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;)V

    .line 35
    .local v1, response:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 36
    .local v2, str:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;->parseData:Z

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->parseResult(Ljava/lang/String;Z)Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->isParsed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;->getmRegisterResult()Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 43
    .end local v1           #response:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper$AdiAccountResponse;
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
