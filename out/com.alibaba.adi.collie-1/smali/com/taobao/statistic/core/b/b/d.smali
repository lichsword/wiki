.class public Lcom/taobao/statistic/core/b/b/d;
.super Lorg/usertrack/android/library/c/c;
.source "ResetCrashHandler.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/b/d;->iF:Lcom/taobao/statistic/core/i;

    .line 10
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/d;->iF:Lcom/taobao/statistic/core/i;

    .line 11
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/d;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->dw()V

    .line 16
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
