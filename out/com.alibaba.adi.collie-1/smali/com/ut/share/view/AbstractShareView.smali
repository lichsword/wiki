.class public abstract Lcom/ut/share/view/AbstractShareView;
.super Ljava/lang/Object;
.source "AbstractShareView.java"

# interfaces
.implements Lcom/ut/share/view/ShareView;


# instance fields
.field protected mShareData:Lcom/ut/share/data/ShareData;

.field protected mShareListener:Lcom/ut/share/view/ShareListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setShareData(Lcom/ut/share/data/ShareData;)V
    .locals 0
    .parameter "shareData"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ut/share/view/AbstractShareView;->mShareData:Lcom/ut/share/data/ShareData;

    .line 26
    return-void
.end method

.method public setShareListener(Lcom/ut/share/view/ShareListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ut/share/view/AbstractShareView;->mShareListener:Lcom/ut/share/view/ShareListener;

    .line 20
    return-void
.end method
