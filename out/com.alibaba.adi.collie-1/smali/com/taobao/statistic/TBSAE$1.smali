.class Lcom/taobao/statistic/TBSAE$1;
.super Ljava/lang/Object;
.source "TBSAE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/TBSAE;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSAE;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/TBSAE;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/taobao/statistic/TBSAE;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    #getter for: Lcom/taobao/statistic/TBSAE;->isUninit:Z
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$100(Lcom/taobao/statistic/TBSAE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "Call Method Error"

    const-string v4, "TBSEngine:The init method does not appear in the uninit after."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v3

    .line 212
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    #getter for: Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$200(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/c;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    #getter for: Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$200(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    #getter for: Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$200(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    #getter for: Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$200(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->aF()Z

    .line 198
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    const/4 v4, 0x0

    #setter for: Lcom/taobao/statistic/TBSAE;->isUninit:Z
    invoke-static {v2, v4}, Lcom/taobao/statistic/TBSAE;->access$102(Lcom/taobao/statistic/TBSAE;Z)Z

    .line 211
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

    .line 200
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$1;->this$0:Lcom/taobao/statistic/TBSAE;

    #getter for: Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$200(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    .line 202
    .local v1, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v0

    .line 205
    .local v0, exec:Lcom/taobao/statistic/core/a;
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a;->aM()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
