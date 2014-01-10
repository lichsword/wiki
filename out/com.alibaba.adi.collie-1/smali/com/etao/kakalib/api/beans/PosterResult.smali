.class public Lcom/etao/kakalib/api/beans/PosterResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "PosterResult.java"


# static fields
.field private static final serialVersionUID:J = -0x5aa13b5681e6406bL


# instance fields
.field private card:Lcom/etao/kakalib/api/beans/BaseCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCard()Lcom/etao/kakalib/api/beans/BaseCard;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PosterResult;->card:Lcom/etao/kakalib/api/beans/BaseCard;

    return-object v0
.end method

.method public setCard(Lcom/etao/kakalib/api/beans/BaseCard;)V
    .locals 0
    .parameter "card"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PosterResult;->card:Lcom/etao/kakalib/api/beans/BaseCard;

    .line 15
    return-void
.end method
