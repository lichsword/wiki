.class public Lcom/ut/share/executor/WeixinExecutor;
.super Lcom/ut/share/executor/AbstractWeixinExecutor;
.source "WeixinExecutor.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;)V
    .locals 0
    .parameter "context"
    .parameter "spt"
    .parameter "weixin"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/ut/share/executor/AbstractWeixinExecutor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected doShare()Z
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/ut/share/executor/WeixinExecutor;->doWeixinShare()Z

    move-result v0

    return v0
.end method

.method public isDirectly()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method
