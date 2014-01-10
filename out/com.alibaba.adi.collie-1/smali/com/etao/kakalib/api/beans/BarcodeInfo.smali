.class public Lcom/etao/kakalib/api/beans/BarcodeInfo;
.super Ljava/lang/Object;
.source "BarcodeInfo.java"


# instance fields
.field private barcode:Ljava/lang/String;

.field private keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeInfo;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeInfo;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeInfo;->barcode:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeInfo;->keyword:Ljava/lang/String;

    .line 23
    return-void
.end method
