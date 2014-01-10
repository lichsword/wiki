.class public Lorg/usertrack/android/utils/j;
.super Ljava/lang/Object;
.source "PhoneInfoUtils.java"


# direct methods
.method public static final eD()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v5, v9

    .line 17
    .local v5, t1:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-int v6, v9

    .line 18
    .local v6, t2:I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 19
    .local v7, t3:I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 20
    .local v8, t4:I
    invoke-static {v5}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v0

    .line 21
    .local v0, b1:[B
    invoke-static {v6}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v1

    .line 22
    .local v1, b2:[B
    invoke-static {v7}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v2

    .line 23
    .local v2, b3:[B
    invoke-static {v8}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v3

    .line 24
    .local v3, b4:[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 25
    .local v4, bUniqueID:[B
    invoke-static {v0, v13, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-static {v1, v13, v4, v14, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    const/16 v9, 0x8

    invoke-static {v2, v13, v4, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    const/16 v9, 0xc

    invoke-static {v3, v13, v4, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {v4}, Lorg/usertrack/a/a/a/a/a;->k([B)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, imei:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 38
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {}, Lorg/usertrack/android/utils/j;->eD()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_1
    return-object v0

    .line 41
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, imsi:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 57
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Lorg/usertrack/android/utils/j;->eD()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1
    return-object v0

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method
