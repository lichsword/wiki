.class public Lcom/ut/device/c;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static iz:Lcom/ut/device/b;

.field static pf:Ljava/lang/String;

.field static final pg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/device/c;->iz:Lcom/ut/device/b;

    .line 28
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ut/device/c;->pf:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ut/device/c;->pg:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method static a(Lcom/ut/device/b;)J
    .locals 9
    .parameter "device"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    const-string v4, "%s%s%s%s%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/ut/device/b;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 39
    invoke-virtual {p0}, Lcom/ut/device/b;->dW()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 40
    invoke-virtual {p0}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 37
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, checkSumContent:Ljava/lang/String;
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 43
    .local v0, adler32:Ljava/util/zip/Adler32;
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 45
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v1

    .line 49
    .end local v0           #adler32:Ljava/util/zip/Adler32;
    .end local v3           #checkSumContent:Ljava/lang/String;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ut/device/b;
    .locals 3
    .parameter "context"

    .prologue
    .line 242
    const-class v2, Lcom/ut/device/c;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ut/device/c;->iz:Lcom/ut/device/b;

    if-eqz v1, :cond_1

    .line 244
    invoke-static {}, Lcom/ut/device/d;->dZ()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-static {p0}, Lcom/ut/device/c;->g(Landroid/content/Context;)Lcom/ut/device/b;

    .line 247
    :cond_0
    sget-object v0, Lcom/ut/device/c;->iz:Lcom/ut/device/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_0
    monitor-exit v2

    return-object v0

    .line 249
    :cond_1
    if-eqz p0, :cond_2

    .line 250
    :try_start_1
    invoke-static {p0}, Lcom/ut/device/c;->h(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 251
    .local v0, device:Lcom/ut/device/b;
    sput-object v0, Lcom/ut/device/c;->iz:Lcom/ut/device/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    .end local v0           #device:Lcom/ut/device/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/ut/device/b;Landroid/content/Context;)V
    .locals 5
    .parameter "device"
    .parameter "aContext"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/ut/device/b;->dW()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 78
    invoke-static {p1}, Lcom/ut/device/c;->g(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 79
    .local v0, tmp:Lcom/ut/device/b;
    if-nez v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Lcom/ut/device/c;->b(Lcom/ut/device/b;Landroid/content/Context;)V

    .line 84
    .end local v0           #tmp:Lcom/ut/device/b;
    :cond_0
    return-void
.end method

.method private static am(Ljava/lang/String;)I
    .locals 5
    .parameter "value"

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, h:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 300
    .local v2, val:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 304
    .end local v1           #i:I
    .end local v2           #val:[C
    :cond_0
    return v0

    .line 301
    .restart local v1       #i:I
    .restart local v2       #val:[C
    :cond_1
    mul-int/lit8 v3, v0, 0x1f

    aget-char v4, v2, v1

    add-int v0, v3, v4

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static b(Lcom/ut/device/b;Landroid/content/Context;)V
    .locals 5
    .parameter "device"
    .parameter "aContext"

    .prologue
    .line 117
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 119
    invoke-static {p1}, Lcom/ut/device/d;->j(Landroid/content/Context;)Lorg/usertrack/android/library/b/c;

    move-result-object v0

    .line 120
    .local v0, ppc:Lorg/usertrack/android/library/b/c;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/ut/device/b;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {v0}, Lorg/usertrack/android/library/b/c;->clear()V

    .line 126
    const-string v1, "EI"

    invoke-virtual {p0}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "SI"

    invoke-virtual {p0}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "UTDID"

    invoke-virtual {p0}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "DID"

    invoke-virtual {p0}, Lcom/ut/device/b;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/b/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "S"

    invoke-static {p0}, Lcom/ut/device/c;->a(Lcom/ut/device/b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/usertrack/android/library/b/c;->putLong(Ljava/lang/String;J)V

    .line 131
    invoke-virtual {p0}, Lcom/ut/device/b;->dW()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 132
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/ut/device/b;->dW()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/usertrack/android/library/b/c;->putLong(Ljava/lang/String;J)V

    .line 134
    :cond_0
    invoke-virtual {v0}, Lorg/usertrack/android/library/b/c;->commit()Z

    .line 138
    .end local v0           #ppc:Lorg/usertrack/android/library/b/c;
    :cond_1
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "pContext"
    .parameter "pUtdid"

    .prologue
    .line 230
    :try_start_0
    invoke-static {p1}, Lorg/usertrack/android/utils/c;->as(Ljava/lang/String;)[B

    move-result-object v1

    .line 231
    .local v1, lBUtdid:[B
    new-instance v2, Lcom/ut/device/e;

    invoke-direct {v2}, Lcom/ut/device/e;-><init>()V

    .line 232
    .local v2, lHelper:Lcom/ut/device/e;
    invoke-virtual {v2, v1}, Lcom/ut/device/e;->j([B)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, lPackedUtdid:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 234
    const-string v5, "dxCRMxhQkdGePGnp"

    .line 233
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1           #lBUtdid:[B
    .end local v2           #lHelper:Lcom/ut/device/e;
    .end local v3           #lPackedUtdid:Ljava/lang/String;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Lcom/ut/device/b;
    .locals 9
    .parameter "aContext"

    .prologue
    .line 54
    new-instance v0, Lcom/ut/device/b;

    invoke-direct {v0}, Lcom/ut/device/b;-><init>()V

    .line 55
    .local v0, device:Lcom/ut/device/b;
    if-eqz p0, :cond_0

    .line 57
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, timestamp:J
    invoke-static {p0}, Lorg/usertrack/android/utils/j;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, imei:Ljava/lang/String;
    invoke-static {p0}, Lorg/usertrack/android/utils/j;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, imsi:Ljava/lang/String;
    invoke-static {p0}, Lcom/ut/device/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, udid:Ljava/lang/String;
    move-object v1, v2

    .line 62
    .local v1, did:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/ut/device/b;->ah(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/ut/device/b;->setImei(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v4, v5}, Lcom/ut/device/b;->g(J)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/ut/device/b;->setImsi(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v6}, Lcom/ut/device/b;->setUtdid(Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/ut/device/c;->a(Lcom/ut/device/b;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/ut/device/b;->f(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1           #did:Ljava/lang/String;
    .end local v2           #imei:Ljava/lang/String;
    .end local v3           #imsi:Ljava/lang/String;
    .end local v4           #timestamp:J
    .end local v6           #udid:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method static g(Landroid/content/Context;)Lcom/ut/device/b;
    .locals 11
    .parameter "aContext"

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/ut/device/d;->j(Landroid/content/Context;)Lorg/usertrack/android/library/b/c;

    move-result-object v8

    .line 91
    .local v8, ppc:Lorg/usertrack/android/library/b/c;
    if-eqz v8, :cond_0

    .line 92
    const-string v10, "EI"

    invoke-virtual {v8, v10}, Lorg/usertrack/android/library/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, imei:Ljava/lang/String;
    const-string v10, "SI"

    invoke-virtual {v8, v10}, Lorg/usertrack/android/library/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, imsi:Ljava/lang/String;
    const-string v10, "UTDID"

    invoke-virtual {v8, v10}, Lorg/usertrack/android/library/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, udid:Ljava/lang/String;
    const-string v10, "DID"

    invoke-virtual {v8, v10}, Lorg/usertrack/android/library/b/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, did:Ljava/lang/String;
    const-string v10, "timestamp"

    invoke-virtual {v8, v10}, Lorg/usertrack/android/library/b/c;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 97
    .local v2, createTimestamp:J
    const-string v10, "S"

    invoke-virtual {v8, v10}, Lorg/usertrack/android/library/b/c;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 98
    .local v0, checkSum:J
    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 99
    invoke-static {v9}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 100
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 101
    new-instance v4, Lcom/ut/device/b;

    invoke-direct {v4}, Lcom/ut/device/b;-><init>()V

    .line 102
    .local v4, device:Lcom/ut/device/b;
    invoke-virtual {v4, v5}, Lcom/ut/device/b;->ah(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4, v6}, Lcom/ut/device/b;->setImei(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, v7}, Lcom/ut/device/b;->setImsi(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, v9}, Lcom/ut/device/b;->setUtdid(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, v2, v3}, Lcom/ut/device/b;->g(J)V

    .line 107
    invoke-virtual {v4, v0, v1}, Lcom/ut/device/b;->f(J)V

    .line 112
    .end local v0           #checkSum:J
    .end local v2           #createTimestamp:J
    .end local v4           #device:Lcom/ut/device/b;
    .end local v5           #did:Ljava/lang/String;
    .end local v6           #imei:Ljava/lang/String;
    .end local v7           #imsi:Ljava/lang/String;
    .end local v8           #ppc:Lorg/usertrack/android/library/b/c;
    .end local v9           #udid:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Lcom/ut/device/b;
    .locals 12
    .parameter "aContext"

    .prologue
    .line 141
    if-eqz p0, :cond_9

    .line 142
    const/4 v7, 0x0

    .line 145
    .local v7, lNeedSyncToSettings:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dxCRMxhQkdGePGnp"

    .line 144
    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, data:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 148
    new-instance v6, Lcom/ut/device/e;

    invoke-direct {v6}, Lcom/ut/device/e;-><init>()V

    .line 150
    .local v6, lHelper:Lcom/ut/device/e;
    invoke-virtual {v6, v1}, Lcom/ut/device/e;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, lDePackedUtdid:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 153
    invoke-static {p0}, Lcom/ut/device/c;->g(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v2

    .line 154
    .local v2, device:Lcom/ut/device/b;
    if-nez v2, :cond_0

    .line 156
    invoke-static {p0}, Lcom/ut/device/c;->f(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2, v5}, Lcom/ut/device/b;->setUtdid(Ljava/lang/String;)V

    .line 161
    invoke-static {v2, p0}, Lcom/ut/device/c;->b(Lcom/ut/device/b;Landroid/content/Context;)V

    .line 164
    :cond_0
    if-eqz v2, :cond_3

    .line 224
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #device:Lcom/ut/device/b;
    .end local v5           #lDePackedUtdid:Ljava/lang/String;
    .end local v6           #lHelper:Lcom/ut/device/e;
    .end local v7           #lNeedSyncToSettings:Z
    :cond_1
    :goto_0
    return-object v2

    .line 169
    .restart local v1       #data:Ljava/lang/String;
    .restart local v7       #lNeedSyncToSettings:Z
    :cond_2
    const/4 v7, 0x1

    .line 172
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-nez v8, :cond_4

    .line 173
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 176
    :cond_4
    invoke-static {p0}, Lcom/ut/device/c;->g(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v2

    .line 177
    .restart local v2       #device:Lcom/ut/device/b;
    if-eqz v2, :cond_5

    .line 178
    invoke-virtual {v2}, Lcom/ut/device/b;->dV()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 179
    invoke-virtual {v2}, Lcom/ut/device/b;->dV()J

    move-result-wide v8

    invoke-static {v2}, Lcom/ut/device/c;->a(Lcom/ut/device/b;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 180
    if-eqz v7, :cond_1

    .line 181
    invoke-virtual {v2}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ut/device/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_5
    invoke-static {}, Lcom/ut/device/BFoundIt;->bN()Lcom/ut/device/b;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 188
    invoke-static {}, Lcom/ut/device/BFoundIt;->bN()Lcom/ut/device/b;

    move-result-object v2

    .line 189
    invoke-static {v2, p0}, Lcom/ut/device/c;->b(Lcom/ut/device/b;Landroid/content/Context;)V

    .line 190
    if-eqz v7, :cond_1

    .line 191
    invoke-virtual {v2}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ut/device/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "src"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v8, "UT.QueryWhoHasOne"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v8, "com.ut.permission.DEVICE_STATE"

    invoke-virtual {p0, v4, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 200
    .local v0, cdl:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/ut/device/BFoundIt;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 202
    const-wide/16 v8, 0x9c4

    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    invoke-static {}, Lcom/ut/device/BFoundIt;->bN()Lcom/ut/device/b;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 207
    invoke-static {}, Lcom/ut/device/BFoundIt;->bN()Lcom/ut/device/b;

    move-result-object v2

    .line 208
    invoke-static {v2, p0}, Lcom/ut/device/c;->b(Lcom/ut/device/b;Landroid/content/Context;)V

    .line 209
    if-eqz v7, :cond_1

    .line 210
    invoke-virtual {v2}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ut/device/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 214
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_7
    sget-object v9, Lcom/ut/device/c;->pg:Ljava/lang/Object;

    monitor-enter v9

    .line 215
    :try_start_1
    invoke-static {p0}, Lcom/ut/device/c;->f(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_8

    .line 217
    invoke-static {v2, p0}, Lcom/ut/device/c;->b(Lcom/ut/device/b;Landroid/content/Context;)V

    .line 218
    invoke-virtual {v2}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ut/device/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    monitor-exit v9

    goto/16 :goto_0

    .line 214
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_8
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .end local v0           #cdl:Ljava/util/concurrent/CountDownLatch;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #device:Lcom/ut/device/b;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #lNeedSyncToSettings:Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static final i(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v9, v12

    .line 263
    .local v9, timestamp:I
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    invoke-virtual {v12}, Ljava/util/Random;->nextInt()I

    move-result v10

    .line 264
    .local v10, uniqueID:I
    const/4 v11, 0x1

    .line 265
    .local v11, version:B
    const/4 v8, 0x0

    .line 266
    .local v8, reserve:B
    invoke-static {v9}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v2

    .line 267
    .local v2, bTimestamp:[B
    invoke-static {v10}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v3

    .line 268
    .local v3, bUniqueID:[B
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v4, v2, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 269
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v4, v3, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 270
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    invoke-static/range {p0 .. p0}, Lorg/usertrack/android/utils/j;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, imei:Ljava/lang/String;
    invoke-static {v7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 274
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 276
    :cond_0
    invoke-static {v7}, Lcom/ut/device/c;->am(Ljava/lang/String;)I

    move-result v5

    .line 277
    .local v5, hashCode:I
    invoke-static {v5}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v1

    .line 278
    .local v1, bHashCode:[B
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v4, v1, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 279
    const-string v6, ""

    .line 280
    .local v6, hmac:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/ut/device/c;->i([B)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {v6}, Lcom/ut/device/c;->am(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v0

    .line 282
    .local v0, bCheckSum:[B
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 283
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lorg/usertrack/android/utils/c;->k([B)Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method private static i([B)Ljava/lang/String;
    .locals 6
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lcom/ut/device/c;->pf:Ljava/lang/String;

    .line 288
    .local v0, key:Ljava/lang/String;
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 289
    .local v1, mac:Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 290
    .local v3, sk:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 291
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 292
    .local v2, result:[B
    invoke-static {v2}, Lorg/usertrack/android/utils/c;->k([B)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
