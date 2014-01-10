.class public Lcom/etao/kakalib/api/beans/UGCRefreshResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "UGCRefreshResult.java"


# static fields
.field private static final serialVersionUID:J = -0xa214b69e6fc42dbL


# instance fields
.field private hint:Ljava/lang/String;

.field private resultCount:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private ugcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/UGCInfo;",
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
.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->resultCount:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/UGCInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->ugcList:Ljava/util/List;

    return-object v0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->hint:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setResultCount(Ljava/lang/String;)V
    .locals 0
    .parameter "resultCount"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->resultCount:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->score:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUgcList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/UGCInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, ugcList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/UGCInfo;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCRefreshResult;->ugcList:Ljava/util/List;

    .line 44
    return-void
.end method
