.class public Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
.super Ljava/lang/Object;
.source "TaoLoginResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;
    }
.end annotation


# instance fields
.field private autoLoginToken:Ljava/lang/String;

.field private eCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private loginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

.field private loginMode:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

.field private loginTime:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private ssoToken:Ljava/lang/String;

.field private topSession:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoLoginToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->autoLoginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginAppToken()Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->loginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    return-object v0
.end method

.method public getLoginMode()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->loginMode:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->ssoToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTopSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->topSession:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public geteCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->eCode:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoLoginToken(Ljava/lang/String;)V
    .locals 0
    .parameter "autoLoginToken"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->autoLoginToken:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMsg"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->errorMsg:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setLoginAppToken(Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;)V
    .locals 0
    .parameter "loginAppToken"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->loginAppToken:Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;

    .line 110
    return-void
.end method

.method public setLoginMode(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;)V
    .locals 0
    .parameter "loginMode"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->loginMode:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult$LoginMode;

    .line 70
    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .locals 0
    .parameter "loginTime"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->loginTime:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "nickName"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->nickName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->sessionId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0
    .parameter "ssoToken"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->ssoToken:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTopSession(Ljava/lang/String;)V
    .locals 0
    .parameter "topSession"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->topSession:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->userId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public seteCode(Ljava/lang/String;)V
    .locals 0
    .parameter "eCode"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->eCode:Ljava/lang/String;

    .line 102
    return-void
.end method
