.class public Lcom/taobao/statistic/core/b/b/f;
.super Lorg/usertrack/android/library/c/c;
.source "ResourcesRelease.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/b/f;->iF:Lcom/taobao/statistic/core/i;

    .line 15
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/f;->iF:Lcom/taobao/statistic/core/i;

    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/f;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->shutdown()V

    .line 21
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/f;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bH()Lcom/taobao/statistic/core/h;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/h;->N(I)V

    .line 22
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
