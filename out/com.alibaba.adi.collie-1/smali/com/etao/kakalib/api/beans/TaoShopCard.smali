.class public Lcom/etao/kakalib/api/beans/TaoShopCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "TaoShopCard.java"


# static fields
.field private static final serialVersionUID:J = 0x100481adb95d197eL


# instance fields
.field private link:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private sellerid:Ljava/lang/String;

.field private shopid:Ljava/lang/String;

.field private title:Ljava/lang/String;


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
    .line 55
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSellerid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->sellerid:Ljava/lang/String;

    return-object v0
.end method

.method public getShopid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->shopid:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->link:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter "nick"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->nick:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->pic:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSellerid(Ljava/lang/String;)V
    .locals 0
    .parameter "sellerid"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->sellerid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setShopid(Ljava/lang/String;)V
    .locals 0
    .parameter "shopid"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->shopid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoShopCard;->title:Ljava/lang/String;

    .line 28
    return-void
.end method
