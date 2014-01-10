.class public Lcom/ut/device/BFoundIt;
.super Landroid/content/BroadcastReceiver;
.source "BFoundIt.java"


# static fields
.field private static volatile iz:Lcom/ut/device/b;

.field private static oV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private static oW:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ut/device/BFoundIt;->oV:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/device/BFoundIt;->iz:Lcom/ut/device/b;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/device/BFoundIt;->oW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .parameter "aCountDownLatch"

    .prologue
    .line 27
    const-class v1, Lcom/ut/device/BFoundIt;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    sget-object v0, Lcom/ut/device/BFoundIt;->oV:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit v1

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bN()Lcom/ut/device/b;
    .locals 2

    .prologue
    .line 40
    sget-object v1, Lcom/ut/device/BFoundIt;->oW:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/ut/device/BFoundIt;->iz:Lcom/ut/device/b;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    monitor-enter p0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 49
    :try_start_0
    const-string v15, "e"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, imei:Ljava/lang/String;
    const-string v15, "s"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, imsi:Ljava/lang/String;
    const-string v15, "d"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 52
    .local v11, deviceID:Ljava/lang/String;
    const-string v15, "u"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 53
    .local v14, utdid:Ljava/lang/String;
    const-string v15, "S"

    const-wide/16 v16, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 55
    .local v4, checkSum:J
    invoke-static {v12}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v13}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 56
    invoke-static {v11}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 57
    invoke-static {v14}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 58
    sget-object v16, Lcom/ut/device/BFoundIt;->oW:Ljava/lang/Object;

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    new-instance v10, Lcom/ut/device/b;

    invoke-direct {v10}, Lcom/ut/device/b;-><init>()V

    .line 60
    .local v10, device:Lcom/ut/device/b;
    invoke-virtual {v10, v12}, Lcom/ut/device/b;->setImei(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v10, v13}, Lcom/ut/device/b;->setImsi(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v10, v11}, Lcom/ut/device/b;->ah(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v10, v14}, Lcom/ut/device/b;->setUtdid(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v10, v4, v5}, Lcom/ut/device/b;->f(J)V

    .line 65
    const-string v15, "t"

    const-wide/16 v17, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 66
    .local v8, createTimestamp:J
    const-wide/16 v17, 0x0

    cmp-long v15, v8, v17

    if-lez v15, :cond_0

    .line 67
    invoke-virtual {v10, v8, v9}, Lcom/ut/device/b;->g(J)V

    .line 69
    :cond_0
    invoke-static {v10}, Lcom/ut/device/c;->a(Lcom/ut/device/b;)J

    move-result-wide v6

    .line 70
    .local v6, checkSum2:J
    sput-object v10, Lcom/ut/device/BFoundIt;->iz:Lcom/ut/device/b;

    .line 72
    cmp-long v15, v6, v4

    if-nez v15, :cond_1

    .line 74
    sget-object v15, Lcom/ut/device/BFoundIt;->oV:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 75
    sput-object v10, Lcom/ut/device/BFoundIt;->iz:Lcom/ut/device/b;

    .line 76
    sget-object v15, Lcom/ut/device/BFoundIt;->oV:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_3

    .line 79
    sget-object v15, Lcom/ut/device/BFoundIt;->oV:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 58
    :cond_1
    :goto_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v4           #checkSum:J
    .end local v6           #checkSum2:J
    .end local v8           #createTimestamp:J
    .end local v10           #device:Lcom/ut/device/b;
    .end local v11           #deviceID:Ljava/lang/String;
    .end local v12           #imei:Ljava/lang/String;
    .end local v13           #imsi:Ljava/lang/String;
    .end local v14           #utdid:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 76
    .restart local v4       #checkSum:J
    .restart local v6       #checkSum2:J
    .restart local v8       #createTimestamp:J
    .restart local v10       #device:Lcom/ut/device/b;
    .restart local v11       #deviceID:Ljava/lang/String;
    .restart local v12       #imei:Ljava/lang/String;
    .restart local v13       #imsi:Ljava/lang/String;
    .restart local v14       #utdid:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    .line 77
    .local v3, cdl:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 58
    .end local v3           #cdl:Ljava/util/concurrent/CountDownLatch;
    .end local v6           #checkSum2:J
    .end local v8           #createTimestamp:J
    .end local v10           #device:Lcom/ut/device/b;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .end local v4           #checkSum:J
    .end local v11           #deviceID:Ljava/lang/String;
    .end local v12           #imei:Ljava/lang/String;
    .end local v13           #imsi:Ljava/lang/String;
    .end local v14           #utdid:Ljava/lang/String;
    :catchall_1
    move-exception v15

    monitor-exit p0

    throw v15

    .line 82
    .restart local v4       #checkSum:J
    .restart local v6       #checkSum2:J
    .restart local v8       #createTimestamp:J
    .restart local v10       #device:Lcom/ut/device/b;
    .restart local v11       #deviceID:Ljava/lang/String;
    .restart local v12       #imei:Ljava/lang/String;
    .restart local v13       #imsi:Ljava/lang/String;
    .restart local v14       #utdid:Ljava/lang/String;
    :cond_4
    :try_start_4
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/ut/device/c;->a(Lcom/ut/device/b;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
