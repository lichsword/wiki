.class public Lcom/etao/kakalib/api/beans/BaseResult;
.super Ljava/lang/Object;
.source "BaseResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ac9dd69637b07e0L


# instance fields
.field private alter:Lcom/etao/kakalib/api/beans/Alter;

.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->success:Z

    .line 10
    const-string v0, "SUCCESS"

    iput-object v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->msgCode:Ljava/lang/String;

    .line 11
    const-string v0, "\u8c03\u7528\u6210\u529f"

    iput-object v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->msgInfo:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getAlter()Lcom/etao/kakalib/api/beans/Alter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->alter:Lcom/etao/kakalib/api/beans/Alter;

    return-object v0
.end method

.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/etao/kakalib/api/beans/BaseResult;->success:Z

    return v0
.end method

.method public setAlter(Lcom/etao/kakalib/api/beans/Alter;)V
    .locals 0
    .parameter "alter"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseResult;->alter:Lcom/etao/kakalib/api/beans/Alter;

    .line 44
    return-void
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0
    .parameter "msgCode"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseResult;->msgCode:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "msgInfo"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseResult;->msgInfo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/etao/kakalib/api/beans/BaseResult;->success:Z

    .line 20
    return-void
.end method
