.class public abstract Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
.super Lcom/etao/kakalib/api/HttpRequstCallback;
.source "KakaLibCodeHttpRequestCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etao/kakalib/api/HttpRequstCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private barCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    .local p0, this:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;,"Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack<TT;>;"
    invoke-direct {p0}, Lcom/etao/kakalib/api/HttpRequstCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    .local p0, this:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;,"Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack<TT;>;"
    iget-object v0, p0, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->barCode:Ljava/lang/String;

    return-object v0
.end method

.method public setBarCode(Ljava/lang/String;)V
    .locals 0
    .parameter "barCode"

    .prologue
    .line 13
    .local p0, this:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;,"Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack<TT;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;->barCode:Ljava/lang/String;

    .line 14
    return-void
.end method
