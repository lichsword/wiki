.class public Lcom/etao/kakalib/api/beans/StorePriceResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "StorePriceResult.java"


# static fields
.field private static final serialVersionUID:J = 0xfa6de4a282a0611L


# instance fields
.field private count:I

.field private priceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Auction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/etao/kakalib/api/beans/StorePriceResult;->count:I

    return v0
.end method

.method public getPriceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Auction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/StorePriceResult;->priceList:Ljava/util/List;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 17
    iput p1, p0, Lcom/etao/kakalib/api/beans/StorePriceResult;->count:I

    .line 18
    return-void
.end method

.method public setPriceList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Auction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, priceList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/Auction;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/StorePriceResult;->priceList:Ljava/util/List;

    .line 26
    return-void
.end method
