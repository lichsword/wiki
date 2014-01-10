.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;
.super Ljava/lang/Object;
.source "MtopAutoLoginAdapter.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/taobao/login/ILoginAdapter;


# instance fields
.field private mAutoLoginToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "autoLoginToken"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;->mAutoLoginToken:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public login()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .locals 5

    .prologue
    .line 22
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;->mAutoLoginToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;->mAutoLoginToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 23
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "autoLoginToken is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 25
    :cond_1
    new-instance v1, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginAdapter;->mAutoLoginToken:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, connectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopAutoLoginConnectorHelper;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 27
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    .line 28
    .local v2, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    .end local v2           #loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :goto_0
    return-object v2

    .restart local v2       #loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
