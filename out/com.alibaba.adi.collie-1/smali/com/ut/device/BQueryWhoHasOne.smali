.class public Lcom/ut/device/BQueryWhoHasOne;
.super Landroid/content/BroadcastReceiver;
.source "BQueryWhoHasOne.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/ut/device/b;)V
    .locals 10
    .parameter "context"
    .parameter "to"
    .parameter "device"

    .prologue
    .line 19
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 21
    sget-object v7, Lcom/ut/device/c;->pg:Ljava/lang/Object;

    monitor-enter v7

    .line 23
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 25
    .local v4, sendIntent:Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v6, "UT.FoundIT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {p2}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, imei:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, imsi:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/ut/device/b;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, did:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, utdid:Ljava/lang/String;
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 34
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 35
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 36
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    const-string v6, "e"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v6, "s"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v6, "d"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v6, "u"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v6, "t"

    invoke-virtual {p2}, Lcom/ut/device/b;->dW()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    const-string v6, "S"

    invoke-virtual {p2}, Lcom/ut/device/b;->dV()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    const-string v6, "com.ut.permission.DEVICE_STATE"

    .line 43
    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .end local v0           #did:Ljava/lang/String;
    .end local v2           #imei:Ljava/lang/String;
    .end local v3           #imsi:Ljava/lang/String;
    .end local v5           #utdid:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7

    .line 51
    .end local v4           #sendIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 46
    .restart local v4       #sendIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 21
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #sendIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    const-string v2, "src"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {p1}, Lcom/ut/device/c;->g(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 57
    .local v0, device:Lcom/ut/device/b;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/ut/device/b;->dV()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/ut/device/b;->dV()J

    move-result-wide v2

    .line 61
    invoke-static {v0}, Lcom/ut/device/c;->a(Lcom/ut/device/b;)J

    move-result-wide v4

    .line 60
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/ut/device/BQueryWhoHasOne;->abortBroadcast()V

    .line 63
    const-string v2, "src"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, src:Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/ut/device/BQueryWhoHasOne;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ut/device/b;)V

    .line 68
    .end local v0           #device:Lcom/ut/device/b;
    .end local v1           #src:Ljava/lang/String;
    :cond_0
    return-void
.end method
