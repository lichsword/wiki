.class public Lcom/etao/kakalib/api/beans/ShareList;
.super Ljava/lang/Object;
.source "ShareList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x618ac08b14c28588L


# instance fields
.field private account:Ljava/lang/String;

.field private contents:[Lcom/etao/kakalib/api/beans/ShareContent;

.field private shareCode:Ljava/lang/String;

.field private shareId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareList;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()[Lcom/etao/kakalib/api/beans/ShareContent;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareList;->contents:[Lcom/etao/kakalib/api/beans/ShareContent;

    return-object v0
.end method

.method public getShareCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareList;->shareCode:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareList;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareList;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareList;->account:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setContents([Lcom/etao/kakalib/api/beans/ShareContent;)V
    .locals 0
    .parameter "contents"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareList;->contents:[Lcom/etao/kakalib/api/beans/ShareContent;

    .line 53
    return-void
.end method

.method public setShareCode(Ljava/lang/String;)V
    .locals 0
    .parameter "shareCode"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareList;->shareCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0
    .parameter "shareId"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareList;->shareId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareList;->userId:Ljava/lang/String;

    .line 37
    return-void
.end method
