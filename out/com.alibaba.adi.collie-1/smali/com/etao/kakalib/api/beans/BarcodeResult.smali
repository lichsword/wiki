.class public Lcom/etao/kakalib/api/beans/BarcodeResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "BarcodeResult.java"


# static fields
.field private static final serialVersionUID:J = -0xd852fc7bfcf7addL


# instance fields
.field private barcode:Ljava/lang/String;

.field private cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/BaseCard;",
            ">;"
        }
    .end annotation
.end field

.field private epid:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/BaseCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->cardList:Ljava/util/List;

    return-object v0
.end method

.method public getEpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->epid:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->barcode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCardList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/BaseCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, cardList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/BaseCard;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->cardList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setEpid(Ljava/lang/String;)V
    .locals 0
    .parameter "epid"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->epid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->keyword:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeResult;->resultCode:Ljava/lang/String;

    .line 21
    return-void
.end method
