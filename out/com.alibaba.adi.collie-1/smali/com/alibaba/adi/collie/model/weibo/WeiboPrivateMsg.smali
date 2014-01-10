.class public Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;
.super Ljava/lang/Object;
.source "WeiboPrivateMsg.java"


# instance fields
.field createdAt:Ljava/lang/String;

.field id:Ljava/lang/Long;

.field mid:Ljava/lang/String;

.field recipientId:Ljava/lang/Long;

.field recipientScreenName:Ljava/lang/String;

.field senderId:Ljava/lang/Long;

.field senderScreenName:Ljava/lang/String;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->recipientId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->recipientScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->senderId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->senderScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->createdAt:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->id:Ljava/lang/Long;

    .line 22
    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0
    .parameter "mid"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->mid:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRecipientId(Ljava/lang/Long;)V
    .locals 0
    .parameter "recipientId"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->recipientId:Ljava/lang/Long;

    .line 54
    return-void
.end method

.method public setRecipientScreenName(Ljava/lang/String;)V
    .locals 0
    .parameter "recipientScreenName"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->recipientScreenName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSenderId(Ljava/lang/Long;)V
    .locals 0
    .parameter "senderId"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->senderId:Ljava/lang/Long;

    .line 46
    return-void
.end method

.method public setSenderScreenName(Ljava/lang/String;)V
    .locals 0
    .parameter "senderScreenName"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->senderScreenName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboPrivateMsg;->text:Ljava/lang/String;

    .line 38
    return-void
.end method
