.class public Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;
.super Ljava/lang/Object;
.source "PushNotifyMsg.java"


# instance fields
.field private data:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->data:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->status:I

    return v0
.end method

.method public setData(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->data:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    .line 33
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->msg:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 16
    iput p1, p0, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->status:I

    .line 17
    return-void
.end method
