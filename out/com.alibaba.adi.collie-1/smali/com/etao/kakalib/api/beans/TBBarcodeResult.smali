.class public Lcom/etao/kakalib/api/beans/TBBarcodeResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "TBBarcodeResult.java"


# static fields
.field private static final serialVersionUID:J = -0x4421d06bfd281a15L


# instance fields
.field private barcode:Ljava/lang/String;

.field private epid:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private offline:Ljava/lang/String;

.field private online:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private title:Ljava/lang/String;


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
    .line 26
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getEpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->epid:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getOffline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->offline:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->online:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnyPrice()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->offline:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->online:Ljava/lang/String;

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

.method public hasKeyWord()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->keyword:Ljava/lang/String;

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

.method public setBarcode(Ljava/lang/String;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->barcode:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setEpid(Ljava/lang/String;)V
    .locals 0
    .parameter "epid"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->epid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->keyword:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setOffline(Ljava/lang/String;)V
    .locals 0
    .parameter "offline"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->offline:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setOnline(Ljava/lang/String;)V
    .locals 0
    .parameter "online"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->online:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->pic:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->title:Ljava/lang/String;

    .line 71
    return-void
.end method
