.class public Lcom/etao/kakalib/api/beans/MediaCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "MediaCard.java"


# static fields
.field private static final serialVersionUID:J = 0x4b6c6417ff8eff0bL


# instance fields
.field private link:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MediaCard;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MediaCard;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MediaCard;->link:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MediaCard;->type:Ljava/lang/String;

    .line 24
    return-void
.end method
