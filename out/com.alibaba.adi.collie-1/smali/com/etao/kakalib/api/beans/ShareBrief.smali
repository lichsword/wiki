.class public Lcom/etao/kakalib/api/beans/ShareBrief;
.super Ljava/lang/Object;
.source "ShareBrief.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ff7004949570202L


# instance fields
.field private gmtTime:Ljava/lang/String;

.field private shareId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGmtTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareBrief;->gmtTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareBrief;->shareId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareBrief;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setGmtTime(Ljava/lang/String;)V
    .locals 0
    .parameter "gmtTime"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareBrief;->gmtTime:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0
    .parameter "shareId"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareBrief;->shareId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareBrief;->type:Ljava/lang/String;

    .line 35
    return-void
.end method
