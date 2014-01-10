.class Lcom/taobao/statistic/core/b/b/g$1;
.super Ljava/lang/Object;
.source "StartUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/core/b/b/g;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jM:Lcom/taobao/statistic/core/b/b/g;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/core/b/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/g$1;->jM:Lcom/taobao/statistic/core/b/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/taobao/statistic/core/b/b/g$1;->jM:Lcom/taobao/statistic/core/b/b/g;

    invoke-static {v1}, Lcom/taobao/statistic/core/b/b/g;->a(Lcom/taobao/statistic/core/b/b/g;)Lcom/taobao/statistic/core/i;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/statistic/module/data/a;->a(Lcom/taobao/statistic/core/i;)Lcom/taobao/statistic/module/data/a;

    move-result-object v0

    .line 39
    .local v0, dataUploader:Lcom/taobao/statistic/module/data/a;
    invoke-virtual {v0}, Lcom/taobao/statistic/module/data/a;->dK()V

    .line 40
    invoke-virtual {v0}, Lcom/taobao/statistic/module/data/a;->destroy()V

    .line 41
    return-void
.end method
