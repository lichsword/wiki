.class Lcom/taobao/statistic/core/o$1$1;
.super Landroid/os/Handler;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/core/o$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mO:Lcom/taobao/statistic/core/o$1;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/core/o$1;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/statistic/core/o$1$1;->mO:Lcom/taobao/statistic/core/o$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/taobao/statistic/core/o;->cF()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/taobao/statistic/core/o$1$1;->mO:Lcom/taobao/statistic/core/o$1;

    iget-object v0, v0, Lcom/taobao/statistic/core/o$1;->mN:Lcom/taobao/statistic/core/o;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/taobao/statistic/core/o;->a(Lcom/taobao/statistic/core/o;Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method
