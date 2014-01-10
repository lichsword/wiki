.class public Lcom/ut/share/executor/WangxinExecutor;
.super Lcom/ut/share/executor/Executor;
.source "WangxinExecutor.java"


# instance fields
.field private mWangxin:Lcom/ut/share/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/b;)V
    .locals 0
    .parameter "context"
    .parameter "spt"
    .parameter "wangxin"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ut/share/executor/Executor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 24
    iput-object p3, p0, Lcom/ut/share/executor/WangxinExecutor;->mWangxin:Lcom/ut/share/a/b;

    .line 25
    return-void
.end method


# virtual methods
.method protected doShare()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 39
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mWangxin:Lcom/ut/share/a/b;

    if-nez v0, :cond_0

    move v0, v9

    .line 59
    :goto_0
    return v0

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getPic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mWangxin:Lcom/ut/share/a/b;

    iget-object v1, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/share/a/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v0}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, wlink:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mWangxin:Lcom/ut/share/a/b;

    iget-object v1, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/ut/share/a/b;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v4           #wlink:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 58
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "WangxinExecutor"

    const-string v1, "share fail"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v9

    .line 59
    goto :goto_0

    .line 50
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #wlink:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    sget-object v1, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    const-string v2, "k_title"

    invoke-virtual {v0, v1, v2}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 51
    .local v8, title:Ljava/lang/Object;
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    sget-object v1, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    const-string v2, "k_layout"

    invoke-virtual {v0, v1, v2}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 52
    .local v7, layout:Ljava/lang/Object;
    iget-object v0, p0, Lcom/ut/share/executor/WangxinExecutor;->mWangxin:Lcom/ut/share/a/b;

    if-nez v8, :cond_4

    iget-object v1, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v2}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ut/share/executor/WangxinExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v3}, Lcom/ut/share/data/ShareData;->getPic()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v7, :cond_5

    const/4 v5, 0x0

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/ut/share/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_3
.end method

.method public isDirectly()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
