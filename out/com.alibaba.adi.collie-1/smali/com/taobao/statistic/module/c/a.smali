.class public Lcom/taobao/statistic/module/c/a;
.super Lcom/taobao/statistic/c/b;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/module/c/a$a;
    }
.end annotation


# instance fields
.field private nD:Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;

.field private nE:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

.field private nF:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

.field private nG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;",
            ">;"
        }
    .end annotation
.end field

.field private nH:Landroid/content/Context;

.field private nI:I

.field private nJ:Landroid/app/PendingIntent;

.field private nK:I

.field private nL:I

.field private nM:Ljava/lang/String;

.field private nN:Ljava/lang/String;

.field private nO:Z

.field private nP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/module/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private nR:Z

.field private nS:Z

.field private nT:Lcom/taobao/statistic/b;

.field private nU:Z

.field private nV:Z


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 4
    .parameter "aRuntime"

    .prologue
    const/16 v3, 0x7d0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 48
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nD:Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;

    .line 52
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nE:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    .line 56
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nF:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    .line 64
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nH:Landroid/content/Context;

    .line 68
    iput v2, p0, Lcom/taobao/statistic/module/c/a;->nI:I

    .line 72
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nJ:Landroid/app/PendingIntent;

    .line 76
    iput v3, p0, Lcom/taobao/statistic/module/c/a;->nK:I

    .line 80
    iput v3, p0, Lcom/taobao/statistic/module/c/a;->nL:I

    .line 84
    const-string v0, "\u7a0b\u5e8f\u5f00\u4e2a\u5c0f\u5dee\uff0c\u6b63\u5728\u91cd\u65b0\u542f\u52a8"

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a;->nM:Ljava/lang/String;

    .line 88
    const-string v0, "\u7a0b\u5e8f\u5f00\u4e2a\u5c0f\u5dee\uff0c\u6b63\u5728\u9000\u51fa"

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a;->nN:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/taobao/statistic/module/c/a;->nO:Z

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    .line 100
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 104
    iput-boolean v2, p0, Lcom/taobao/statistic/module/c/a;->nR:Z

    .line 108
    iput-boolean v2, p0, Lcom/taobao/statistic/module/c/a;->nS:Z

    .line 112
    iput-object v1, p0, Lcom/taobao/statistic/module/c/a;->nT:Lcom/taobao/statistic/b;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nU:Z

    .line 120
    iput-boolean v2, p0, Lcom/taobao/statistic/module/c/a;->nV:Z

    .line 124
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/module/c/a;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nH:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Lcom/taobao/statistic/module/c/a$a;
    .locals 19
    .parameter "ex"

    .prologue
    .line 472
    const/4 v8, 0x0

    .line 473
    .local v8, argWrapper:Lcom/taobao/statistic/module/c/a$a;
    if-eqz p1, :cond_5

    .line 474
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    .line 475
    .local v17, te:Ljava/lang/Throwable;
    if-nez v17, :cond_0

    .line 476
    move-object/from16 v17, p1

    .line 478
    :cond_0
    if-eqz v17, :cond_5

    .line 479
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    .line 480
    .local v15, stes:[Ljava/lang/StackTraceElement;
    array-length v1, v15

    if-lez v1, :cond_5

    .line 482
    const/4 v1, 0x0

    aget-object v14, v15, v1

    .line 483
    .local v14, ste:Ljava/lang/StackTraceElement;
    if-eqz v14, :cond_5

    .line 484
    const/4 v11, 0x0

    .line 485
    .local v11, kPos:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, sException:Ljava/lang/String;
    const-string v12, ""

    .line 487
    .local v12, message:Ljava/lang/String;
    new-instance v16, Ljava/io/StringWriter;

    invoke-direct/range {v16 .. v16}, Ljava/io/StringWriter;-><init>()V

    .line 488
    .local v16, sw:Ljava/io/StringWriter;
    new-instance v13, Ljava/io/PrintWriter;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 490
    .local v13, pw:Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 491
    invoke-virtual/range {v16 .. v16}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 495
    :try_start_1
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 496
    invoke-virtual/range {v16 .. v16}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 501
    :goto_0
    invoke-static {v12}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    const-string v1, "\n"

    const-string v2, "++"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 505
    :cond_1
    const-string v1, "}:"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_6

    .line 506
    add-int/lit8 v1, v11, 0x2

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 510
    :cond_2
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa0c

    if-le v1, v2, :cond_3

    .line 511
    const/4 v1, 0x0

    const/16 v2, 0xa0b

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 514
    :cond_3
    invoke-static {v12}, Lorg/usertrack/android/utils/g;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, md5:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bS()Lcom/taobao/statistic/module/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/module/e/a;->dA()Ljava/lang/String;

    move-result-object v10

    .line 517
    .local v10, history:Ljava/lang/String;
    const-string v1, "StackTrace=====>%sOperatorHistory=====>%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 521
    .local v9, args:Ljava/lang/String;
    const-string v1, "com.taobao.statistic"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "org.usertrack"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 523
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    const-string v2, "Page_CrashHandler"

    const/16 v3, 0x1771

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v9, v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 526
    new-instance v8, Lcom/taobao/statistic/module/c/a$a;

    .end local v8           #argWrapper:Lcom/taobao/statistic/module/c/a$a;
    invoke-direct {v8}, Lcom/taobao/statistic/module/c/a$a;-><init>()V

    .line 527
    .restart local v8       #argWrapper:Lcom/taobao/statistic/module/c/a$a;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/taobao/statistic/module/c/a$a;->y(Z)V

    .line 539
    .end local v4           #md5:Ljava/lang/String;
    .end local v5           #sException:Ljava/lang/String;
    .end local v9           #args:Ljava/lang/String;
    .end local v10           #history:Ljava/lang/String;
    .end local v11           #kPos:I
    .end local v12           #message:Ljava/lang/String;
    .end local v13           #pw:Ljava/io/PrintWriter;
    .end local v14           #ste:Ljava/lang/StackTraceElement;
    .end local v15           #stes:[Ljava/lang/StackTraceElement;
    .end local v16           #sw:Ljava/io/StringWriter;
    .end local v17           #te:Ljava/lang/Throwable;
    :cond_5
    :goto_2
    return-object v8

    .line 492
    .restart local v5       #sException:Ljava/lang/String;
    .restart local v11       #kPos:I
    .restart local v12       #message:Ljava/lang/String;
    .restart local v13       #pw:Ljava/io/PrintWriter;
    .restart local v14       #ste:Ljava/lang/StackTraceElement;
    .restart local v15       #stes:[Ljava/lang/StackTraceElement;
    .restart local v16       #sw:Ljava/io/StringWriter;
    .restart local v17       #te:Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 495
    :try_start_2
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 496
    invoke-virtual/range {v16 .. v16}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 497
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 494
    :catchall_0
    move-exception v1

    .line 495
    :try_start_3
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 496
    invoke-virtual/range {v16 .. v16}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 499
    :goto_3
    throw v1

    .line 507
    :cond_6
    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_2

    .line 508
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 530
    .restart local v4       #md5:Ljava/lang/String;
    .restart local v9       #args:Ljava/lang/String;
    .restart local v10       #history:Ljava/lang/String;
    :cond_7
    new-instance v8, Lcom/taobao/statistic/module/c/a$a;

    .end local v8           #argWrapper:Lcom/taobao/statistic/module/c/a$a;
    invoke-direct {v8}, Lcom/taobao/statistic/module/c/a$a;-><init>()V

    .line 531
    .restart local v8       #argWrapper:Lcom/taobao/statistic/module/c/a$a;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/taobao/statistic/module/c/a$a;->y(Z)V

    .line 532
    new-instance v1, Lcom/taobao/statistic/Arg;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v3, v6

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/taobao/statistic/Arg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/Arg;)V

    goto :goto_2

    .line 497
    .end local v4           #md5:Ljava/lang/String;
    .end local v9           #args:Ljava/lang/String;
    .end local v10           #history:Ljava/lang/String;
    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method private a(Lcom/taobao/statistic/core/a/c;)V
    .locals 7
    .parameter "ppc"

    .prologue
    const/4 v6, 0x1

    .line 543
    iget-object v2, p0, Lcom/taobao/statistic/module/c/a;->nJ:Landroid/app/PendingIntent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/taobao/statistic/module/c/a;->nH:Landroid/content/Context;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v2, :cond_4

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, crashCount:I
    if-eqz p1, :cond_1

    .line 546
    const-string v2, "CH_START"

    invoke-virtual {p1, v2}, Lcom/taobao/statistic/core/a/c;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 551
    :goto_0
    iget v2, p0, Lcom/taobao/statistic/module/c/a;->nI:I

    if-ge v0, v2, :cond_2

    .line 552
    iget-object v2, p0, Lcom/taobao/statistic/module/c/a;->nH:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 554
    .local v1, mgr:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/taobao/statistic/module/c/a;->nL:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/taobao/statistic/module/c/a;->nJ:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 556
    if-eqz p1, :cond_0

    .line 557
    const-string v2, "CH_START"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/taobao/statistic/core/a/c;->putInt(Ljava/lang/String;I)V

    .line 558
    invoke-virtual {p1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 560
    :cond_0
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 572
    .end local v0           #crashCount:I
    .end local v1           #mgr:Landroid/app/AlarmManager;
    :goto_1
    return-void

    .line 549
    .restart local v0       #crashCount:I
    :cond_1
    iget v0, p0, Lcom/taobao/statistic/module/c/a;->nI:I

    goto :goto_0

    .line 562
    :cond_2
    if-eqz p1, :cond_3

    .line 563
    const-string v2, "CH_START"

    invoke-virtual {p1, v2}, Lcom/taobao/statistic/core/a/c;->remove(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 566
    :cond_3
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 569
    .end local v0           #crashCount:I
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 570
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method private dx()V
    .locals 3

    .prologue
    .line 419
    iget-object v2, p0, Lcom/taobao/statistic/module/c/a;->nH:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/taobao/statistic/module/c/a;->nK:I

    if-lez v2, :cond_0

    .line 420
    const-string v0, ""

    .line 421
    .local v0, tmp_toastString:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/taobao/statistic/module/c/a;->nO:Z

    if-eqz v2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nM:Ljava/lang/String;

    .line 430
    :goto_0
    move-object v1, v0

    .line 431
    .local v1, toastContent:Ljava/lang/String;
    new-instance v2, Lcom/taobao/statistic/module/c/a$1;

    invoke-direct {v2, p0, v1}, Lcom/taobao/statistic/module/c/a$1;-><init>(Lcom/taobao/statistic/module/c/a;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/taobao/statistic/module/c/a$1;->start()V

    .line 448
    .end local v0           #tmp_toastString:Ljava/lang/String;
    .end local v1           #toastContent:Ljava/lang/String;
    :cond_0
    return-void

    .line 424
    .restart local v0       #tmp_toastString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/taobao/statistic/module/c/a;->nJ:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 425
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nM:Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nN:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 0
    .parameter "usertrackDaemonThreadCrashCaughtListener"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a;->nF:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    .line 266
    return-void
.end method

.method public a(Lcom/taobao/statistic/b;)V
    .locals 0
    .parameter "tbsObject"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a;->nT:Lcom/taobao/statistic/b;

    .line 633
    return-void
.end method

.method public aK()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nV:Z

    .line 576
    return-void
.end method

.method public disableEffect()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nU:Z

    .line 190
    return-void
.end method

.method public du()I
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v10, 0x0

    .line 128
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 130
    .local v8, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v9

    .line 131
    .local v9, size:I
    if-eqz v8, :cond_2

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/statistic/module/c/b;

    .line 136
    .local v7, ei:Lcom/taobao/statistic/module/c/b;
    if-eqz v7, :cond_0

    .line 137
    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.taobao.statistic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    const-string v1, "CrashHandler"

    const/16 v2, 0x1772

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->dz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StackTrace=====>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OperatorHistory=====>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->dA()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    const-string v1, "Page_UsertrackUninit"

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->dz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StackTrace=====>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OperatorHistory=====>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/taobao/statistic/module/c/b;->dA()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v14

    move v2, v13

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v3           #key:Ljava/lang/String;
    .end local v7           #ei:Lcom/taobao/statistic/module/c/b;
    :cond_2
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 167
    .end local v8           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #size:I
    :goto_1
    return v9

    :cond_3
    move v9, v10

    goto :goto_1
.end method

.method public dv()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nR:Z

    return v0
.end method

.method public dw()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 205
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .parameter "aGlobalContext"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a;->nH:Landroid/content/Context;

    .line 281
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 282
    return-void
.end method

.method public onCaughException(Ljava/lang/Throwable;)V
    .locals 15
    .parameter "ex"

    .prologue
    .line 579
    if-eqz p1, :cond_4

    .line 580
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    .line 581
    .local v12, te:Ljava/lang/Throwable;
    if-nez v12, :cond_0

    .line 582
    move-object/from16 v12, p1

    .line 584
    :cond_0
    if-eqz v12, :cond_4

    .line 586
    const/4 v11, 0x0

    .line 587
    .local v11, stes:[Ljava/lang/StackTraceElement;
    invoke-virtual {v12}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    .line 588
    if-eqz v11, :cond_4

    array-length v13, v11

    if-lez v13, :cond_4

    .line 589
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 590
    .local v7, message:Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v10, v0, v3

    .line 591
    .local v10, steE:Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "++"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v10           #steE:Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v13, 0x0

    aget-object v9, v11, v13

    .line 594
    .local v9, ste:Ljava/lang/StackTraceElement;
    if-eqz v9, :cond_4

    .line 595
    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, sException:Ljava/lang/String;
    const/4 v4, 0x0

    .line 598
    .local v4, kPos:I
    if-eqz v8, :cond_2

    .line 599
    const-string v13, "}:"

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    .line 600
    add-int/lit8 v13, v4, 0x2

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 606
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x2134

    if-le v13, v14, :cond_3

    .line 607
    const/4 v13, 0x0

    const/16 v14, 0x2133

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 609
    :cond_3
    invoke-static {v7}, Lorg/usertrack/android/utils/g;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, md5:Ljava/lang/String;
    iget-object v13, p0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v13}, Lcom/taobao/statistic/core/i;->bS()Lcom/taobao/statistic/module/e/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/statistic/module/e/a;->dA()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, history:Ljava/lang/String;
    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 613
    iget-object v13, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v13, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 614
    iget-object v13, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v13, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/statistic/module/c/b;

    .line 616
    .local v1, ei:Lcom/taobao/statistic/module/c/b;
    if-eqz v1, :cond_4

    .line 617
    invoke-virtual {v1}, Lcom/taobao/statistic/module/c/b;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v1, v13}, Lcom/taobao/statistic/module/c/b;->T(I)V

    .line 629
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #ei:Lcom/taobao/statistic/module/c/b;
    .end local v2           #history:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #kPos:I
    .end local v5           #len$:I
    .end local v6           #md5:Ljava/lang/String;
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #sException:Ljava/lang/String;
    .end local v9           #ste:Ljava/lang/StackTraceElement;
    .end local v11           #stes:[Ljava/lang/StackTraceElement;
    .end local v12           #te:Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-void

    .line 602
    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v3       #i$:I
    .restart local v4       #kPos:I
    .restart local v5       #len$:I
    .restart local v7       #message:Ljava/lang/String;
    .restart local v8       #sException:Ljava/lang/String;
    .restart local v9       #ste:Ljava/lang/StackTraceElement;
    .restart local v11       #stes:[Ljava/lang/StackTraceElement;
    .restart local v12       #te:Ljava/lang/Throwable;
    :cond_5
    const-string v13, ":"

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 603
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 620
    .restart local v2       #history:Ljava/lang/String;
    .restart local v6       #md5:Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/taobao/statistic/module/c/b;

    invoke-direct {v1, v8, v7, v2}, Lcom/taobao/statistic/module/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .restart local v1       #ei:Lcom/taobao/statistic/module/c/b;
    iget-object v13, p0, Lcom/taobao/statistic/module/c/a;->nP:Ljava/util/Hashtable;

    invoke-virtual {v13, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public removeDaemonCrashCaughtListener(Ljava/lang/String;)V
    .locals 1
    .parameter "threadName"

    .prologue
    .line 240
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    return-void
.end method

.method public setContinueWhenDaemonThreadUncaughException()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nS:Z

    .line 270
    return-void
.end method

.method public setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a;->nD:Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;

    .line 237
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 0
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a;->nE:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    .line 261
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 1
    .parameter "threadName"
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 249
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    return-void
.end method

.method public setToastStyle(ILjava/lang/String;)V
    .locals 1
    .parameter "howLongToastShow"
    .parameter "toastString"

    .prologue
    .line 226
    if-ltz p1, :cond_0

    .line 227
    iput p1, p0, Lcom/taobao/statistic/module/c/a;->nK:I

    .line 229
    :cond_0
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iput-object p2, p0, Lcom/taobao/statistic/module/c/a;->nM:Ljava/lang/String;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nO:Z

    .line 233
    :cond_1
    return-void
.end method

.method public turnOff()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nR:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a;->nU:Z

    .line 182
    invoke-virtual {p0}, Lcom/taobao/statistic/module/c/a;->dw()V

    .line 183
    return-void
.end method

.method public turnOn()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Lcom/taobao/statistic/module/c/a;->init(Landroid/content/Context;)V

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/statistic/module/c/a;->nR:Z

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/statistic/module/c/a;->nU:Z

    .line 199
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 17
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/taobao/statistic/module/c/a;->a(Ljava/lang/Throwable;)Lcom/taobao/statistic/module/c/a$a;

    move-result-object v9

    .line 289
    .local v9, argWrapper:Lcom/taobao/statistic/module/c/a$a;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/taobao/statistic/module/c/a$a;->dy()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 291
    const/4 v15, 0x0

    .line 292
    .local v15, newArg:Lcom/taobao/statistic/Arg;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nD:Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;

    if-eqz v2, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nD:Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v3}, Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;->OnCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/taobao/statistic/Arg;)Lcom/taobao/statistic/Arg;

    move-result-object v15

    .line 295
    :cond_0
    if-eqz v15, :cond_6

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v15}, Lcom/taobao/statistic/Arg;->getArg1()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15}, Lcom/taobao/statistic/Arg;->getArg2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15}, Lcom/taobao/statistic/Arg;->getArg3()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v15}, Lcom/taobao/statistic/Arg;->getArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 309
    .end local v15           #newArg:Lcom/taobao/statistic/Arg;
    :cond_1
    :goto_0
    if-eqz p1, :cond_9

    .line 310
    const/4 v12, 0x0

    .line 311
    .local v12, isFromSDK:Z
    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->b(Lcom/taobao/statistic/module/c/a$a;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    const/4 v12, 0x1

    .line 315
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 316
    if-nez v12, :cond_7

    .line 317
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/taobao/statistic/module/c/a;->nS:Z

    if-eqz v2, :cond_9

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/m;->cx()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    const/4 v2, 0x1

    const-string v3, "Thread: Uncaugh Exception"

    const-string v4, "Usertrack has been captured, be sure to pay attention."

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    :cond_3
    const/4 v11, 0x0

    .line 325
    .local v11, isCapture:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nG:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    .line 329
    .local v14, listener:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;
    if-eqz v14, :cond_4

    .line 330
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;->OnDaemonThreadCrashCaught(Ljava/lang/Thread;)V

    .line 331
    const/4 v11, 0x1

    .line 334
    .end local v14           #listener:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;
    :cond_4
    if-nez v11, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nE:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    if-eqz v2, :cond_5

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nE:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;->OnDaemonThreadCrashCaught(Ljava/lang/Thread;)V

    .line 416
    .end local v9           #argWrapper:Lcom/taobao/statistic/module/c/a$a;
    .end local v11           #isCapture:Z
    .end local v12           #isFromSDK:Z
    :cond_5
    :goto_1
    return-void

    .line 301
    .restart local v9       #argWrapper:Lcom/taobao/statistic/module/c/a$a;
    .restart local v15       #newArg:Lcom/taobao/statistic/Arg;
    :cond_6
    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/statistic/Arg;->getArg1()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/statistic/Arg;->getArg2()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/statistic/Arg;->getArg3()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9}, Lcom/taobao/statistic/module/c/a$a;->a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/statistic/Arg;->getArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v15           #newArg:Lcom/taobao/statistic/Arg;
    .restart local v12       #isFromSDK:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/m;->cA()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 344
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    const/4 v2, 0x2

    const-string v3, "Thread:Uncaugh Exception"

    const-string v4, "Usertrack has been captured, be sure to pay attention."

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nF:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    if-eqz v2, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nF:Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;->OnDaemonThreadCrashCaught(Ljava/lang/Thread;)V

    goto :goto_1

    .line 358
    .end local v12           #isFromSDK:Z
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v16

    .line 362
    .local v16, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v16, :cond_a

    .line 363
    const-string v2, "APP_STATUS"

    sget-object v3, Lcom/taobao/statistic/APPSTATUS;->CRASHED:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v3}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 366
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v13

    .line 368
    .local v13, isRunningBackground:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/core/q;->v(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nT:Lcom/taobao/statistic/b;

    if-eqz v2, :cond_b

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nT:Lcom/taobao/statistic/b;

    invoke-interface {v2}, Lcom/taobao/statistic/b;->uninit()V

    .line 376
    :goto_2
    if-eqz v13, :cond_c

    .line 383
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 374
    :cond_b
    invoke-static {}, Lcom/taobao/statistic/TBS;->uninit()V

    goto :goto_2

    .line 384
    :catch_0
    move-exception v10

    .line 385
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 390
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/taobao/statistic/module/c/a;->nV:Z

    if-nez v2, :cond_d

    .line 392
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/taobao/statistic/module/c/a;->nU:Z

    if-eqz v2, :cond_d

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/taobao/statistic/module/c/a;->dx()V

    .line 394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/taobao/statistic/module/c/a;->nK:I

    if-lez v2, :cond_d

    .line 396
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/taobao/statistic/module/c/a;->nK:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/taobao/statistic/module/c/a;->nV:Z

    if-nez v2, :cond_e

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/taobao/statistic/module/c/a;->a(Lcom/taobao/statistic/core/a/c;)V

    goto/16 :goto_1

    .line 397
    :catch_1
    move-exception v10

    .line 398
    .restart local v10       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 407
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_f

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/module/c/a;->nQ:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 411
    :cond_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 412
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1
.end method

.method public withRestart(Landroid/app/Activity;II)V
    .locals 4
    .parameter "mainActivityForRestart"
    .parameter "howLongAppRestart"
    .parameter "howManyTimes"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a;->nJ:Landroid/app/PendingIntent;

    .line 215
    :cond_0
    if-lez p3, :cond_2

    .line 216
    iput p3, p0, Lcom/taobao/statistic/module/c/a;->nI:I

    .line 220
    :goto_0
    if-ltz p2, :cond_1

    .line 221
    iput p2, p0, Lcom/taobao/statistic/module/c/a;->nL:I

    .line 223
    :cond_1
    return-void

    .line 218
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/statistic/module/c/a;->nI:I

    goto :goto_0
.end method
