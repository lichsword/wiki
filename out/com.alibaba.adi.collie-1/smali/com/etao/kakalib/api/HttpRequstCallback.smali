.class public abstract Lcom/etao/kakalib/api/HttpRequstCallback;
.super Ljava/lang/Object;
.source "HttpRequstCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    .local p0, this:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpLoadingCancelled()V
    .locals 0

    .prologue
    .line 49
    .local p0, this:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    return-void
.end method

.method public abstract onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public onHttpLoadingFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 41
    .local p0, this:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    return-void
.end method

.method public onHttpLoadingStarted()V
    .locals 0

    .prologue
    .line 13
    .local p0, this:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 24
    .local p0, this:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    return-void
.end method
