.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
.super Ljava/lang/Object;
.source "MtopLoginAdapter.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/taobao/login/ILoginAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopLoginAdapter"


# instance fields
.field private mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

.field private final mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;)V
    .locals 0
    .parameter "userInput"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
    .locals 0
    .parameter "userInput"
    .parameter "checkCode"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    .line 28
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    .line 29
    return-void
.end method


# virtual methods
.method public login()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .locals 7

    .prologue
    .line 33
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "TaoLoginUserInput is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 37
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 40
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v4

    .line 41
    new-instance v5, Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;

    iget-object v6, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mUserInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    invoke-direct {v5, v6}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/AppTokenConnectorHelper;-><init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;)V

    .line 40
    invoke-virtual {v4, v5, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    .line 42
    .local v1, appToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 43
    const-string v4, "MtopLoginAdapter"

    const-string v5, "obtain appToken failed"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x0

    .line 60
    :cond_2
    :goto_0
    return-object v3

    .line 48
    :cond_3
    const/4 v2, 0x0

    .line 49
    .local v2, loginConnectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    if-eqz v4, :cond_4

    .line 50
    new-instance v2, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;

    .end local v2           #loginConnectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-direct {v2, v1, v4}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;-><init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V

    .line 54
    .restart local v2       #loginConnectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;
    :goto_1
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    .line 56
    .local v3, loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    const-string v4, "MtopLoginAdapter"

    const-string v5, "login with MTOP failed"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v3           #loginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_4
    new-instance v2, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;

    .end local v2           #loginConnectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;
    invoke-direct {v2, v1}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;-><init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;)V

    .restart local v2       #loginConnectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginConnectorHelper;
    goto :goto_1
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
