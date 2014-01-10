.class public Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;
.super Ljava/lang/Object;
.source "TaoLoginUserInput.java"


# instance fields
.field private passwd:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPasswd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->passwd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->passwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 27
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 0
    .parameter "passwd"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->passwd:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->userName:Ljava/lang/String;

    .line 16
    return-void
.end method
