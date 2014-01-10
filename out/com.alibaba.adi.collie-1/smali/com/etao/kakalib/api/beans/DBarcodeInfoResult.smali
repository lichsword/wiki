.class public Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "DBarcodeInfoResult.java"


# static fields
.field public static final SECURITY_BLACK:Ljava/lang/String; = "B"

.field public static final SECURITY_UNKNOWN:Ljava/lang/String; = "U"

.field public static final SECURITY_WHITE:Ljava/lang/String; = "W"

.field public static final TYPE_CRD:Ljava/lang/String; = "CRD"

.field public static final TYPE_TXT:Ljava/lang/String; = "TXT"

.field public static final TYPE_WEB:Ljava/lang/String; = "WEB"

.field private static final serialVersionUID:J = 0x5a9b2c7d3318f3d1L


# instance fields
.field private content:Ljava/lang/String;

.field private security:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/etao/kakalib/api/beans/DBarcodeResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    .line 24
    const-string v2, ""

    .line 25
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeResult;->getCard()Lcom/etao/kakalib/api/beans/BaseCard;

    move-result-object v0

    .line 26
    .local v0, card:Lcom/etao/kakalib/api/beans/BaseCard;
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/SiteCard;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 27
    check-cast v1, Lcom/etao/kakalib/api/beans/SiteCard;

    .line 28
    .local v1, mCard:Lcom/etao/kakalib/api/beans/SiteCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/SiteCard;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 49
    .end local v1           #mCard:Lcom/etao/kakalib/api/beans/SiteCard;
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->setContent(Ljava/lang/String;)V

    .line 50
    const-string v3, "WEB"

    invoke-virtual {p0, v3}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->setType(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/etao/kakalib/api/beans/DBarcodeResult;->getSecurity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->setSecurity(Ljava/lang/String;)V

    .line 52
    return-void

    .line 29
    :cond_1
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/TaoShopCard;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 30
    check-cast v1, Lcom/etao/kakalib/api/beans/TaoShopCard;

    .line 31
    .local v1, mCard:Lcom/etao/kakalib/api/beans/TaoShopCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/TaoShopCard;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 32
    goto :goto_0

    .end local v1           #mCard:Lcom/etao/kakalib/api/beans/TaoShopCard;
    :cond_2
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/TaoItemCard;

    if-eqz v3, :cond_3

    move-object v1, v0

    .line 33
    check-cast v1, Lcom/etao/kakalib/api/beans/TaoItemCard;

    .line 34
    .local v1, mCard:Lcom/etao/kakalib/api/beans/TaoItemCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/TaoItemCard;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 35
    goto :goto_0

    .end local v1           #mCard:Lcom/etao/kakalib/api/beans/TaoItemCard;
    :cond_3
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/TaoWeCard;

    if-eqz v3, :cond_4

    move-object v1, v0

    .line 36
    check-cast v1, Lcom/etao/kakalib/api/beans/TaoWeCard;

    .line 37
    .local v1, mCard:Lcom/etao/kakalib/api/beans/TaoWeCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/TaoWeCard;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 38
    goto :goto_0

    .end local v1           #mCard:Lcom/etao/kakalib/api/beans/TaoWeCard;
    :cond_4
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/ExtensionCard;

    if-eqz v3, :cond_5

    move-object v1, v0

    .line 39
    check-cast v1, Lcom/etao/kakalib/api/beans/ExtensionCard;

    .line 40
    .local v1, mCard:Lcom/etao/kakalib/api/beans/ExtensionCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/ExtensionCard;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 41
    goto :goto_0

    .end local v1           #mCard:Lcom/etao/kakalib/api/beans/ExtensionCard;
    :cond_5
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/MediaCard;

    if-eqz v3, :cond_6

    move-object v1, v0

    .line 42
    check-cast v1, Lcom/etao/kakalib/api/beans/MediaCard;

    .line 43
    .local v1, mCard:Lcom/etao/kakalib/api/beans/MediaCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/MediaCard;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 44
    goto :goto_0

    .end local v1           #mCard:Lcom/etao/kakalib/api/beans/MediaCard;
    :cond_6
    instance-of v3, v0, Lcom/etao/kakalib/api/beans/TaoCouponCard;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 45
    check-cast v1, Lcom/etao/kakalib/api/beans/TaoCouponCard;

    .line 46
    .local v1, mCard:Lcom/etao/kakalib/api/beans/TaoCouponCard;
    invoke-virtual {v1}, Lcom/etao/kakalib/api/beans/TaoCouponCard;->getLink()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->security:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isUrlBlack()Z
    .locals 2

    .prologue
    .line 83
    const-string v0, "B"

    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->getSecurity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUrlUnknow()Z
    .locals 2

    .prologue
    .line 87
    const-string v0, "U"

    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->getSecurity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUrlWhite()Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "W"

    invoke-virtual {p0}, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->getSecurity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->content:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0
    .parameter "security"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->security:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;->type:Ljava/lang/String;

    .line 68
    return-void
.end method
