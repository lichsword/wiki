.class public Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;
.super Ljava/lang/Object;
.source "WeiboStatus.java"


# instance fields
.field createdAt:Ljava/lang/String;

.field id:Ljava/lang/Long;

.field source:Ljava/lang/String;

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
    .line 22
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->createdAt:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->id:Ljava/lang/Long;

    .line 19
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->source:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->text:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUser(Lcom/alibaba/adi/collie/model/weibo/WeiboUser;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboStatus;->user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    .line 51
    return-void
.end method
