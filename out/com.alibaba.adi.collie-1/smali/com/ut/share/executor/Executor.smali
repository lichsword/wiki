.class public abstract Lcom/ut/share/executor/Executor;
.super Ljava/lang/Object;
.source "Executor.java"


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mShareData:Lcom/ut/share/data/ShareData;

.field protected mSpt:Lcom/ut/share/SharePlatform;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V
    .locals 0
    .parameter "context"
    .parameter "spt"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ut/share/executor/Executor;->mContext:Landroid/app/Activity;

    .line 15
    iput-object p2, p0, Lcom/ut/share/executor/Executor;->mSpt:Lcom/ut/share/SharePlatform;

    .line 16
    return-void
.end method

.method private beforeShare()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method


# virtual methods
.method protected abstract doShare()Z
.end method

.method public getSharePlatform()Lcom/ut/share/SharePlatform;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ut/share/executor/Executor;->mSpt:Lcom/ut/share/SharePlatform;

    return-object v0
.end method

.method public abstract isDirectly()Z
.end method

.method public setData(Lcom/ut/share/data/ShareData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ut/share/executor/Executor;->mShareData:Lcom/ut/share/data/ShareData;

    .line 26
    return-void
.end method

.method public share()Z
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ut/share/executor/Executor;->beforeShare()V

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/ut/share/executor/Executor;->doShare()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 36
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Executor"

    const-string v2, "doShare fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const/4 v1, 0x0

    goto :goto_0
.end method
