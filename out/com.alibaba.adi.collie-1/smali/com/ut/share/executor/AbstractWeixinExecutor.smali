.class public abstract Lcom/ut/share/executor/AbstractWeixinExecutor;
.super Lcom/ut/share/executor/Executor;
.source "AbstractWeixinExecutor.java"


# instance fields
.field private mThumbNailSize:I

.field private mWeixin:Lcom/ut/share/a/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;)V
    .locals 1
    .parameter "context"
    .parameter "spt"
    .parameter "weixin"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/ut/share/executor/Executor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 20
    const/16 v0, 0x50

    iput v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mThumbNailSize:I

    .line 28
    iput-object p3, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mWeixin:Lcom/ut/share/a/c;

    .line 29
    return-void
.end method


# virtual methods
.method protected doWeixinShare()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mWeixin:Lcom/ut/share/a/c;

    if-nez v0, :cond_0

    move v0, v11

    .line 61
    :goto_0
    return v0

    .line 36
    :cond_0
    const/4 v6, 0x0

    .line 37
    .local v6, isWeixinPengyou:Z
    :try_start_0
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mSpt:Lcom/ut/share/SharePlatform;

    sget-object v2, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    if-ne v0, v2, :cond_1

    .line 38
    const/4 v6, 0x1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    iget-object v2, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mSpt:Lcom/ut/share/SharePlatform;

    const-string v3, "k_title"

    invoke-virtual {v0, v2, v3}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 41
    .local v9, title:Ljava/lang/Object;
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    .line 42
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mWeixin:Lcom/ut/share/a/c;

    if-nez v9, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/ut/share/a/c;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 48
    :cond_4
    if-nez v9, :cond_5

    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, pengyouTitle:Ljava/lang/String;
    :goto_3
    if-nez v9, :cond_6

    move-object v10, v1

    .line 50
    .local v10, weixinTitle:Ljava/lang/String;
    :goto_4
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mWeixin:Lcom/ut/share/a/c;

    if-eqz v6, :cond_7

    move-object v1, v8

    :goto_5
    iget-object v2, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v4}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mThumbNailSize:I

    invoke-virtual/range {v0 .. v6}, Lcom/ut/share/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 59
    .end local v8           #pengyouTitle:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/Object;
    .end local v10           #weixinTitle:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 60
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "doWeixinShare"

    const-string v1, "share fail"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v11

    .line 61
    goto :goto_0

    .line 48
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #title:Ljava/lang/Object;
    :cond_5
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 49
    .restart local v8       #pengyouTitle:Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .restart local v10       #weixinTitle:Ljava/lang/String;
    :cond_7
    move-object v1, v10

    .line 50
    goto :goto_5

    .line 55
    .end local v8           #pengyouTitle:Ljava/lang/String;
    .end local v10           #weixinTitle:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mWeixin:Lcom/ut/share/a/c;

    if-nez v9, :cond_9

    :goto_6
    iget-object v2, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v4}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mThumbNailSize:I

    invoke-virtual/range {v0 .. v6}, Lcom/ut/share/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_9
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_6
.end method

.method public setThumbNailSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 23
    iput p1, p0, Lcom/ut/share/executor/AbstractWeixinExecutor;->mThumbNailSize:I

    .line 24
    return-void
.end method
