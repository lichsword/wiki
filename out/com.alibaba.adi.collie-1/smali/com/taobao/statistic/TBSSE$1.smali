.class Lcom/taobao/statistic/TBSSE$1;
.super Ljava/lang/Object;
.source "TBSSE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/TBSSE;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSSE;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/TBSSE;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 182
    invoke-static {}, Lcom/taobao/statistic/TBSSE;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->isUninit:Z
    invoke-static {v2}, Lcom/taobao/statistic/TBSSE;->access$100(Lcom/taobao/statistic/TBSSE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "Call Method Error"

    const-string v4, "TBSEngine:The init method does not appear in the uninit after."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v3

    .line 205
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSSE;->access$200(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/c;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSSE;->access$200(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSSE;->access$200(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    const/4 v4, 0x0

    #setter for: Lcom/taobao/statistic/TBSSE;->isUninit:Z
    invoke-static {v2, v4}, Lcom/taobao/statistic/TBSSE;->access$102(Lcom/taobao/statistic/TBSSE;Z)Z

    .line 191
    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSSE;->access$200(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->aF()Z

    .line 204
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 193
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/taobao/statistic/TBSSE$1;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSSE;->access$200(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    .line 195
    .local v1, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v1}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v0

    .line 198
    .local v0, exec:Lcom/taobao/statistic/core/a;
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a;->aM()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
