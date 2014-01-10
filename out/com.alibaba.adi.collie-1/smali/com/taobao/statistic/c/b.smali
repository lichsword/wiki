.class public Lcom/taobao/statistic/c/b;
.super Lcom/taobao/statistic/c/a;
.source "RuntimeModule.java"


# instance fields
.field protected iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "aRuntime"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/statistic/c/a;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/c/b;->iF:Lcom/taobao/statistic/core/i;

    .line 15
    iput-object p1, p0, Lcom/taobao/statistic/c/b;->iF:Lcom/taobao/statistic/core/i;

    .line 16
    return-void
.end method
