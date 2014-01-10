.class final Lcom/taobao/statistic/TBS$1;
.super Ljava/lang/Object;
.source "TBS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/TBS;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 175
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 176
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$100()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    const-string v3, "Call Method Error"

    const-string v5, "TBSEngine:(Init)Please call setEnvironment method first."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const-string v3, "Call Method Error"

    const-string v5, "TBSEngine:The init method should not appear in the uninit after."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v4

    .line 209
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$300()Lcom/taobao/statistic/c;

    move-result-object v3

    if-nez v3, :cond_4

    .line 186
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$400()Lcom/taobao/statistic/c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 188
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$400()Lcom/taobao/statistic/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/c;->aF()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$400()Lcom/taobao/statistic/c;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/statistic/TBS;->access$302(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/c;

    .line 190
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/taobao/statistic/TBS;->access$402(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/c;

    .line 193
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/taobao/statistic/TBS;->access$202(Z)Z

    .line 208
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 196
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$300()Lcom/taobao/statistic/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v2

    .line 198
    .local v2, runtime:Lcom/taobao/statistic/core/i;
    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    .line 200
    .local v1, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {v1}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v0

    .line 202
    .local v0, exec:Lcom/taobao/statistic/core/a;
    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a;->aM()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
