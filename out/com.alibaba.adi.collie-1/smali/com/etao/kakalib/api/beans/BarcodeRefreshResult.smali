.class public Lcom/etao/kakalib/api/beans/BarcodeRefreshResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "BarcodeRefreshResult.java"


# static fields
.field private static final serialVersionUID:J = 0x78b9ab2d45db0538L


# instance fields
.field private resultCount:Ljava/lang/String;

.field private updateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/BarcodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeRefreshResult;->resultCount:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/BarcodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BarcodeRefreshResult;->updateList:Ljava/util/List;

    return-object v0
.end method

.method public setResultCount(Ljava/lang/String;)V
    .locals 0
    .parameter "resultCount"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeRefreshResult;->resultCount:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setUpdateList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/BarcodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, updateList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/BarcodeInfo;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BarcodeRefreshResult;->updateList:Ljava/util/List;

    .line 26
    return-void
.end method
