.class public Lcom/etao/kakalib/api/beans/ProductInfo;
.super Lcom/etao/kakalib/api/beans/BarcodeResult;
.source "ProductInfo.java"


# static fields
.field private static final serialVersionUID:J = -0xd7e4f79062946d4L


# instance fields
.field private offLinePrice:Ljava/lang/String;

.field private onLinePrice:Ljava/lang/String;

.field private onLineTitle:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BarcodeResult;-><init>()V

    return-void
.end method

.method private setLowest(Ljava/util/List;)V
    .locals 4
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
    .line 170
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/Auction;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    :cond_1
    return-void

    .line 171
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/api/beans/Auction;

    .line 172
    .local v0, auction:Lcom/etao/kakalib/api/beans/Auction;
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/etao/kakalib/api/beans/Auction;->getLowest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/etao/kakalib/api/beans/Auction;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/api/beans/ProductInfo;->setOnLinePrice(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/etao/kakalib/api/beans/Auction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/api/beans/ProductInfo;->setOnLineTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOffLinePrice()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->offLinePrice:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->parseCards()V

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->offLinePrice:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 90
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NoOffLinePrice"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOnLinePrice()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->onLinePrice:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->parseCards()V

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->onLinePrice:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 106
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NoOnLinePrice"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOnLineTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->onLineTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->parseCards()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->onLineTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->pic:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->parseCards()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->parseCards()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnyPrice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    const/high16 v1, -0x4080

    .line 69
    .local v1, offlinePrice:F
    :try_start_0
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOffLinePrice()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    const/high16 v2, -0x4080

    .line 75
    .local v2, onlinePrice:F
    :try_start_1
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->getOnLinePrice()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 79
    :goto_1
    cmpl-float v3, v1, v4

    if-gtz v3, :cond_0

    cmpl-float v3, v2, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    :goto_2
    return v3

    .line 70
    .end local v2           #onlinePrice:F
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #onlinePrice:F
    :catch_1
    move-exception v0

    .line 77
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public hasKeyWord()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseCards()V
    .locals 9

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/ProductInfo;->getCardList()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, cardList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/BaseCard;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    :sswitch_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/api/beans/BaseCard;

    .line 129
    .local v0, card:Lcom/etao/kakalib/api/beans/BaseCard;
    const/4 v2, 0x0

    .line 131
    .local v2, cardNo:I
    :try_start_0
    invoke-virtual {v0}, Lcom/etao/kakalib/api/beans/BaseCard;->getCardNo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 136
    :goto_1
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    move-object v5, v0

    .line 138
    check-cast v5, Lcom/etao/kakalib/api/beans/ProductCard;

    .line 139
    .local v5, productCard:Lcom/etao/kakalib/api/beans/ProductCard;
    invoke-virtual {v5}, Lcom/etao/kakalib/api/beans/ProductCard;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/etao/kakalib/api/beans/ProductInfo;->setTitle(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5}, Lcom/etao/kakalib/api/beans/ProductCard;->getPic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/etao/kakalib/api/beans/ProductInfo;->setPic(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v5           #productCard:Lcom/etao/kakalib/api/beans/ProductCard;
    :catch_0
    move-exception v3

    .line 133
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .end local v3           #e:Ljava/lang/NumberFormatException;
    :sswitch_2
    move-object v4, v0

    .line 149
    check-cast v4, Lcom/etao/kakalib/api/beans/PriceCard;

    .line 150
    .local v4, priceCard:Lcom/etao/kakalib/api/beans/PriceCard;
    invoke-virtual {v4}, Lcom/etao/kakalib/api/beans/PriceCard;->getAuctionList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/etao/kakalib/api/beans/ProductInfo;->setLowest(Ljava/util/List;)V

    goto :goto_0

    .end local v4           #priceCard:Lcom/etao/kakalib/api/beans/PriceCard;
    :sswitch_3
    move-object v4, v0

    .line 154
    check-cast v4, Lcom/etao/kakalib/api/beans/PriceCard;

    .line 155
    .restart local v4       #priceCard:Lcom/etao/kakalib/api/beans/PriceCard;
    invoke-virtual {v4}, Lcom/etao/kakalib/api/beans/PriceCard;->getAuctionList()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/etao/kakalib/api/beans/Auction;

    invoke-virtual {v6}, Lcom/etao/kakalib/api/beans/Auction;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/etao/kakalib/api/beans/ProductInfo;->setOffLinePrice(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOffLinePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "offLinePrice"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->offLinePrice:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setOnLinePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "onLinePrice"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->onLinePrice:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOnLineTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "onLineTitle"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->onLineTitle:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->pic:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductInfo;->title:Ljava/lang/String;

    .line 60
    return-void
.end method
