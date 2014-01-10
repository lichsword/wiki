.class public Lcom/ut/share/data/ShareAppInfo;
.super Ljava/lang/Object;
.source "ShareAppInfo.java"


# instance fields
.field private mExecutor:Lcom/ut/share/executor/Executor;

.field private name:Ljava/lang/String;

.field private spt:Lcom/ut/share/SharePlatform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecutor()Lcom/ut/share/executor/Executor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ut/share/data/ShareAppInfo;->mExecutor:Lcom/ut/share/executor/Executor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ut/share/data/ShareAppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpt()Lcom/ut/share/SharePlatform;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ut/share/data/ShareAppInfo;->spt:Lcom/ut/share/SharePlatform;

    return-object v0
.end method

.method public setExecutor(Lcom/ut/share/executor/Executor;)V
    .locals 0
    .parameter "mExecutor"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ut/share/data/ShareAppInfo;->mExecutor:Lcom/ut/share/executor/Executor;

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ut/share/data/ShareAppInfo;->name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setSpt(Lcom/ut/share/SharePlatform;)V
    .locals 0
    .parameter "spt"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ut/share/data/ShareAppInfo;->spt:Lcom/ut/share/SharePlatform;

    .line 23
    return-void
.end method
