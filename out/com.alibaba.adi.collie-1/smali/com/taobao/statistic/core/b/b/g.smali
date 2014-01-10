.class public Lcom/taobao/statistic/core/b/b/g;
.super Lorg/usertrack/android/library/c/c;
.source "StartUploadService.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    .line 19
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/core/b/b/g;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method private t(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 89
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/taobao/statistic/module/data/Yolanda;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v3, "resourceIdentifier"

    iget-object v4, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/q;->df()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const-string v3, "isDev"

    iget-object v4, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/m;->cA()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    const-string v3, "logSwitch"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/q;->cJ()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const-string v3, "delay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 107
    .local v0, commonPPC:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_2

    .line 108
    const-string v3, "ISYRunning"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 109
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 110
    const-string v3, "BackgroundUpload"

    const-string v4, "set ISYRunning=true"

    invoke-static {v6, v3, v4}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    .line 114
    .local v2, lCN:Landroid/content/ComponentName;
    if-nez v2, :cond_3

    .line 115
    const-string v3, "BackgroundUpload"

    const-string v4, "Start Upload Service Fail."

    invoke-static {v6, v3, v4}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_3
    return-void

    .line 99
    .end local v0           #commonPPC:Lcom/taobao/statistic/core/a/c;
    .end local v2           #lCN:Landroid/content/ComponentName;
    :cond_4
    const-string v3, "logSwitch"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 12

    .prologue
    .line 24
    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 33
    :try_start_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/taobao/statistic/core/b/b/g$1;

    invoke-direct {v7, p0}, Lcom/taobao/statistic/core/b/b/g$1;-><init>(Lcom/taobao/statistic/core/b/b/g;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v6           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/statistic/core/c;->bl()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 52
    .local v4, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_3

    .line 55
    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bM()Lcom/taobao/statistic/module/data/a;

    move-result-object v0

    .line 56
    .local v0, dataUploader:Lcom/taobao/statistic/module/data/a;
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/taobao/statistic/module/data/a;->dF()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 59
    :try_start_1
    invoke-virtual {v0}, Lcom/taobao/statistic/module/data/a;->dG()V

    .line 60
    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bT()Lcom/taobao/statistic/module/f/a;

    move-result-object v7

    iget-object v9, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v9}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/statistic/module/data/a;->b(Lcom/taobao/statistic/core/c;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/taobao/statistic/module/f/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 66
    .local v5, resourceHandlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 68
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, handler:Ljava/lang/String;
    const-string v7, "SRV"

    invoke-virtual {v4, v2, v7}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v7, 0x2

    const-string v9, "ServiceLock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Commit:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    .end local v2           #handler:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #resourceHandlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 73
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #resourceHandlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 75
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v0           #dataUploader:Lcom/taobao/statistic/module/data/a;
    .end local v5           #resourceHandlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bY()Lcom/taobao/statistic/core/p;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/statistic/core/p;->cH()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/taobao/statistic/core/b/b/g;->t(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 81
    :catch_1
    move-exception v1

    .line 82
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
