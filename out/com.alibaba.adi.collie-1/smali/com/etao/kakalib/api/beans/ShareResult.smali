.class public Lcom/etao/kakalib/api/beans/ShareResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "ShareResult.java"


# static fields
.field private static final serialVersionUID:J = 0x61eac3225b494734L


# instance fields
.field private account:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private contents:[Lcom/etao/kakalib/api/beans/ShareContent;

.field private description:Ljava/lang/String;

.field private favorite:Ljava/lang/String;

.field private keep:Ljava/lang/String;

.field private share:Ljava/lang/String;

.field private shareCode:Ljava/lang/String;

.field private shareId:Ljava/lang/String;

.field private watch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()[Lcom/etao/kakalib/api/beans/ShareContent;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->contents:[Lcom/etao/kakalib/api/beans/ShareContent;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->favorite:Ljava/lang/String;

    return-object v0
.end method

.method public getKeep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->keep:Ljava/lang/String;

    return-object v0
.end method

.method public getShare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getShareCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->shareCode:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getWatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareResult;->watch:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->account:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->comment:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setContents([Lcom/etao/kakalib/api/beans/ShareContent;)V
    .locals 0
    .parameter "contents"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->contents:[Lcom/etao/kakalib/api/beans/ShareContent;

    .line 96
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFavorite(Ljava/lang/String;)V
    .locals 0
    .parameter "favorite"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->favorite:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setKeep(Ljava/lang/String;)V
    .locals 0
    .parameter "keep"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->keep:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setShare(Ljava/lang/String;)V
    .locals 0
    .parameter "share"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->share:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setShareCode(Ljava/lang/String;)V
    .locals 0
    .parameter "shareCode"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->shareCode:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0
    .parameter "shareId"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->shareId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setWatch(Ljava/lang/String;)V
    .locals 0
    .parameter "watch"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareResult;->watch:Ljava/lang/String;

    .line 56
    return-void
.end method
