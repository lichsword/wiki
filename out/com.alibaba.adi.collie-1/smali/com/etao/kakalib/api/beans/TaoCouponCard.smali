.class public Lcom/etao/kakalib/api/beans/TaoCouponCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "TaoCouponCard.java"


# static fields
.field private static final serialVersionUID:J = -0x189bc390dbe0d14fL


# instance fields
.field private link:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private seller:Ljava/lang/String;

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
    .line 46
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSeller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->seller:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->link:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->pic:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->price:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSeller(Ljava/lang/String;)V
    .locals 0
    .parameter "seller"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->seller:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoCouponCard;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
