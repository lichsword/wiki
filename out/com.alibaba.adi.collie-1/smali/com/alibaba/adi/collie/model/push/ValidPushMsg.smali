.class public Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
.super Ljava/lang/Object;
.source "ValidPushMsg.java"


# instance fields
.field private centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

.field private topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    return-object v0
.end method

.method public getTopMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenterMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 0
    .parameter "centerMsg"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 25
    return-void
.end method

.method public setTopMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 0
    .parameter "topMsg"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 17
    return-void
.end method
