.class public Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;
.super Ljava/lang/Object;
.source "WeiboUnreadStatus.java"


# instance fields
.field cmt:I

.field count:I

.field dm:I

.field follower:I

.field mentionCmt:I

.field mentionStatus:I

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->init()V

    .line 17
    return-void
.end method


# virtual methods
.method public getCmt()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->cmt:I

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->cmt:I

    iget v1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->dm:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionCmt:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionStatus:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->count:I

    .line 79
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->count:I

    return v0
.end method

.method public getDm()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->dm:I

    return v0
.end method

.method public getFollower()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->follower:I

    return v0
.end method

.method public getMentionCmt()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionCmt:I

    return v0
.end method

.method public getMentionStatus()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionStatus:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->status:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->status:I

    .line 21
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->follower:I

    .line 22
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->cmt:I

    .line 23
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->dm:I

    .line 24
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionStatus:I

    .line 25
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionCmt:I

    .line 26
    iput v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->count:I

    .line 27
    return-void
.end method

.method public setCmt(I)V
    .locals 0
    .parameter "cmt"

    .prologue
    .line 50
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->cmt:I

    .line 51
    return-void
.end method

.method public setDm(I)V
    .locals 0
    .parameter "dm"

    .prologue
    .line 58
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->dm:I

    .line 59
    return-void
.end method

.method public setFollower(I)V
    .locals 0
    .parameter "follower"

    .prologue
    .line 42
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->follower:I

    .line 43
    return-void
.end method

.method public setMentionCmt(I)V
    .locals 0
    .parameter "mentionCmt"

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionCmt:I

    .line 75
    return-void
.end method

.method public setMentionStatus(I)V
    .locals 0
    .parameter "mentionStatus"

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->mentionStatus:I

    .line 67
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->status:I

    .line 35
    return-void
.end method
