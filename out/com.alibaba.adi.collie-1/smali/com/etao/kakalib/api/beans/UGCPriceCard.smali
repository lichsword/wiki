.class public Lcom/etao/kakalib/api/beans/UGCPriceCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "UGCPriceCard.java"


# static fields
.field private static final serialVersionUID:J = 0x5900418790a9af3bL


# instance fields
.field private price:Ljava/lang/String;

.field private uploader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCPriceCard;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCPriceCard;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCPriceCard;->price:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUploader(Ljava/lang/String;)V
    .locals 0
    .parameter "uploader"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCPriceCard;->uploader:Ljava/lang/String;

    .line 17
    return-void
.end method
