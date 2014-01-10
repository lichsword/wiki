.class public Lorg/usertrack/android/library/d/d;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# direct methods
.method private static aa(I)J
    .locals 10
    .parameter "aUid"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 195
    new-array v1, v7, [Ljava/lang/Object;

    .line 196
    .local v1, obj:[Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    .line 197
    const-string v5, "android.net.TrafficStats"

    .line 198
    const-string v6, "getUidRxBytes"

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    .line 197
    invoke-static {v5, v6, v1, v7}, Lorg/usertrack/android/utils/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 200
    check-cast v2, Ljava/lang/Long;

    .line 201
    .local v2, value:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 202
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 204
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 206
    .end local v2           #value:Ljava/lang/Long;
    :cond_1
    return-wide v3
.end method

.method private static ab(I)J
    .locals 10
    .parameter "aUid"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 211
    new-array v1, v7, [Ljava/lang/Object;

    .line 212
    .local v1, obj:[Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    .line 213
    const-string v5, "android.net.TrafficStats"

    .line 214
    const-string v6, "getUidTxBytes"

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    .line 213
    invoke-static {v5, v6, v1, v7}, Lorg/usertrack/android/utils/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 216
    check-cast v2, Ljava/lang/Long;

    .line 217
    .local v2, value:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 218
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 220
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 222
    .end local v2           #value:Ljava/lang/Long;
    :cond_1
    return-wide v3
.end method

.method public static ac(I)Lorg/usertrack/android/library/d/b;
    .locals 3
    .parameter "aUid"

    .prologue
    .line 290
    new-instance v0, Lorg/usertrack/android/library/d/b;

    invoke-direct {v0}, Lorg/usertrack/android/library/d/b;-><init>()V

    .line 291
    .local v0, ts:Lorg/usertrack/android/library/d/b;
    invoke-static {p0}, Lorg/usertrack/android/library/d/d;->getUidTxBytes(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/d/b;->h(J)V

    .line 292
    invoke-static {p0}, Lorg/usertrack/android/library/d/d;->getUidRxBytes(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/d/b;->i(J)V

    .line 293
    return-object v0
.end method

.method private static b(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 7
    .parameter "aInStream"

    .prologue
    .line 22
    const/4 v3, 0x0

    .line 23
    .local v3, outStream:Ljava/io/ByteArrayOutputStream;
    const-string v5, ""

    .line 25
    .local v5, result:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 26
    .end local v3           #outStream:Ljava/io/ByteArrayOutputStream;
    .local v4, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 27
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 28
    .local v2, length:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 31
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 35
    if-eqz v4, :cond_0

    .line 37
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 43
    :cond_0
    :goto_1
    if-eqz p0, :cond_6

    .line 45
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 52
    .end local v0           #buffer:[B
    .end local v2           #length:I
    .end local v4           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_2
    return-object v5

    .line 29
    .end local v3           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #length:I
    .restart local v4       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 32
    .end local v0           #buffer:[B
    .end local v2           #length:I
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 35
    .end local v4           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_3
    if-eqz v3, :cond_3

    .line 37
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 43
    :cond_3
    :goto_4
    if-eqz p0, :cond_1

    .line 45
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 46
    :catch_1
    move-exception v1

    .line 47
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 38
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 39
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 34
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 35
    :goto_5
    if-eqz v3, :cond_4

    .line 37
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 43
    :cond_4
    :goto_6
    if-eqz p0, :cond_5

    .line 45
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 51
    :cond_5
    :goto_7
    throw v6

    .line 38
    :catch_3
    move-exception v1

    .line 39
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 46
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 47
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 38
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #length:I
    .restart local v4       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v1

    .line 39
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 47
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    move-object v3, v4

    .end local v4           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 34
    .end local v0           #buffer:[B
    .end local v2           #length:I
    .end local v3           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #outStream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 32
    :catch_7
    move-exception v6

    goto :goto_3
.end method

.method public static getUidRxBytes(I)J
    .locals 11
    .parameter "aUid"

    .prologue
    .line 227
    invoke-static {}, Lorg/usertrack/android/utils/p;->eF()I

    move-result v9

    const/16 v10, 0x8

    if-lt v9, v10, :cond_0

    .line 228
    invoke-static {p0}, Lorg/usertrack/android/library/d/d;->aa(I)J

    move-result-wide v2

    .line 229
    .local v2, bytes:J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_0

    .line 256
    .end local v2           #bytes:J
    :goto_0
    return-wide v2

    .line 233
    :cond_0
    const-wide/16 v0, 0x0

    .line 234
    .local v0, ReturnLong:J
    const/4 v6, 0x0

    .line 236
    .local v6, inStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/proc/uid_stat/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/tcp_rcv"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, url:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 239
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v6           #inStream:Ljava/io/FileInputStream;
    .local v7, inStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v7}, Lorg/usertrack/android/library/d/d;->b(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v0

    move-object v6, v7

    .line 246
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .restart local v6       #inStream:Ljava/io/FileInputStream;
    :cond_1
    if-eqz v6, :cond_2

    .line 248
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v5           #file:Ljava/io/File;
    .end local v8           #url:Ljava/lang/String;
    :cond_2
    :goto_1
    move-wide v2, v0

    .line 256
    goto :goto_0

    .line 242
    :catch_0
    move-exception v4

    .line 243
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    if-eqz v6, :cond_2

    .line 248
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 249
    :catch_1
    move-exception v4

    .line 250
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 246
    :goto_3
    if-eqz v6, :cond_3

    .line 248
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 254
    :cond_3
    :goto_4
    throw v9

    .line 249
    :catch_2
    move-exception v4

    .line 250
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 249
    .end local v4           #e:Ljava/io/IOException;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #url:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 250
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #inStream:Ljava/io/FileInputStream;
    .restart local v6       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 242
    .end local v6           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #inStream:Ljava/io/FileInputStream;
    .restart local v6       #inStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getUidTxBytes(I)J
    .locals 12
    .parameter "aUid"

    .prologue
    .line 260
    invoke-static {}, Lorg/usertrack/android/utils/p;->eF()I

    move-result v10

    const/16 v11, 0x8

    if-lt v10, v11, :cond_0

    .line 261
    invoke-static {p0}, Lorg/usertrack/android/library/d/d;->ab(I)J

    move-result-wide v2

    .line 262
    .local v2, bytes:J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    .line 286
    .end local v2           #bytes:J
    :goto_0
    return-wide v2

    .line 266
    :cond_0
    const-wide/16 v0, 0x0

    .line 267
    .local v0, ReturnLong:J
    const/4 v7, 0x0

    .line 269
    .local v7, inStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/proc/uid_stat/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/tcp_snd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, url:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 272
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .local v8, inStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v8}, Lorg/usertrack/android/library/d/d;->b(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v0

    move-object v7, v8

    .line 278
    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    :cond_1
    if-eqz v7, :cond_2

    .line 280
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v6           #file:Ljava/io/File;
    .end local v9           #url:Ljava/lang/String;
    :cond_2
    :goto_1
    move-wide v2, v0

    .line 286
    goto :goto_0

    .line 275
    :catch_0
    move-exception v5

    .line 276
    .local v5, e1:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    if-eqz v7, :cond_2

    .line 280
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 281
    :catch_1
    move-exception v4

    .line 282
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #e1:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v10

    .line 278
    :goto_3
    if-eqz v7, :cond_3

    .line 280
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 285
    :cond_3
    :goto_4
    throw v10

    .line 281
    :catch_2
    move-exception v4

    .line 282
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 281
    .end local v4           #e:Ljava/io/IOException;
    .restart local v6       #file:Ljava/io/File;
    .restart local v9       #url:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 282
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .restart local v8       #inStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 275
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .restart local v8       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method
