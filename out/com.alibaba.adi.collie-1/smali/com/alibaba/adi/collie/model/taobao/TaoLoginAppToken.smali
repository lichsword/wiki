.class public Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;
.super Ljava/lang/Object;
.source "TaoLoginAppToken.java"


# instance fields
.field private appToken:Ljava/lang/String;

.field private pubKey:Ljava/lang/String;

.field private userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->appToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPubKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->pubKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInput()Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->appToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->appToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->pubKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->pubKey:Ljava/lang/String;

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

.method public setAppToken(Ljava/lang/String;)V
    .locals 0
    .parameter "appToken"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->appToken:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setPubKey(Ljava/lang/String;)V
    .locals 0
    .parameter "pubKey"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->pubKey:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUserInput(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;)V
    .locals 0
    .parameter "userInput"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginAppToken;->userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    .line 33
    return-void
.end method
