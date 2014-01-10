.class Lcom/taobao/statistic/core/o$1;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/core/o;->cE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mN:Lcom/taobao/statistic/core/o;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/core/o;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/taobao/statistic/core/o$1;->mN:Lcom/taobao/statistic/core/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 87
    iget-object v0, p0, Lcom/taobao/statistic/core/o$1;->mN:Lcom/taobao/statistic/core/o;

    new-instance v1, Lcom/taobao/statistic/core/o$1$1;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/core/o$1$1;-><init>(Lcom/taobao/statistic/core/o$1;)V

    invoke-static {v0, v1}, Lcom/taobao/statistic/core/o;->a(Lcom/taobao/statistic/core/o;Landroid/os/Handler;)Landroid/os/Handler;

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void
.end method
