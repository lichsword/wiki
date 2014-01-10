.class public Lcom/alibaba/adi/collie/model/weibo/WeiboComment;
.super Ljava/lang/Object;
.source "WeiboComment.java"


# instance fields
.field createdAt:Ljava/lang/String;

.field id:Ljava/lang/Long;

.field replyComment:Ljava/lang/String;

.field retweetedStatus:Ljava/lang/String;

.field source:Ljava/lang/String;

.field status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

.field text:Ljava/lang/String;

.field user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;


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
    .line 17
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getReplyComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->replyComment:Ljava/lang/String;

    return-object v0
.end method

.method public getRetweetedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->retweetedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->createdAt:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->id:Ljava/lang/Long;

    .line 30
    return-void
.end method

.method public setReplyComment(Ljava/lang/String;)V
    .locals 0
    .parameter "replyComment"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->replyComment:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setRetweetedStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "retweetedStatus"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->retweetedStatus:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->source:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStatus(Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->status:Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->text:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUser(Lcom/alibaba/adi/collie/model/weibo/WeiboUser;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    .line 54
    return-void
.end method
