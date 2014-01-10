.class public Lcom/etao/kakalib/api/beans/PriceCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "PriceCard.java"


# static fields
.field private static final serialVersionUID:J = 0x2788e31fbe625e71L


# instance fields
.field private auctionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Auction;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuctionList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PriceCard;->auctionList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PriceCard;->count:Ljava/lang/String;

    return-object v0
.end method

.method public setAuctionList(Ljava/util/List;)V
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
    .local p1, auctionList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/Auction;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PriceCard;->auctionList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PriceCard;->count:Ljava/lang/String;

    .line 18
    return-void
.end method
