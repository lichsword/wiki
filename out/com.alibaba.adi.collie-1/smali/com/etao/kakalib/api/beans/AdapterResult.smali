.class public Lcom/etao/kakalib/api/beans/AdapterResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "AdapterResult.java"


# static fields
.field private static final serialVersionUID:J = -0x7f80ac4d9d298e0fL


# instance fields
.field private autoFocusInterval:Ljava/lang/String;

.field private pictureFormat:Ljava/lang/String;

.field private pictureSize:Ljava/lang/String;

.field private previewFormat:Ljava/lang/String;

.field private previewSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoFocusInterval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->autoFocusInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->pictureFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->pictureSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->previewFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->previewSize:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoFocusInterval(Ljava/lang/String;)V
    .locals 0
    .parameter "autoFocusInterval"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->autoFocusInterval:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPictureFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "pictureFormat"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->pictureFormat:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPictureSize(Ljava/lang/String;)V
    .locals 0
    .parameter "pictureSize"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->pictureSize:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPreviewFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "previewFormat"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->previewFormat:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPreviewSize(Ljava/lang/String;)V
    .locals 0
    .parameter "previewSize"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/AdapterResult;->previewSize:Ljava/lang/String;

    .line 35
    return-void
.end method
