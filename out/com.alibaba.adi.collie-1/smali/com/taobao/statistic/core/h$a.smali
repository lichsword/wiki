.class Lcom/taobao/statistic/core/h$a;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private ll:Ljava/io/ByteArrayOutputStream;

.field private lm:Ljava/io/ByteArrayOutputStream;

.field private ln:I

.field private final lo:[B

.field private lp:Z

.field private lq:Ljava/util/Random;

.field private lr:I

.field final synthetic ls:Lcom/taobao/statistic/core/h;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/h;Z)V
    .locals 3
    .parameter
    .parameter "pIsDelay"

    .prologue
    const/4 v2, 0x0

    .line 55
    iput-object p1, p0, Lcom/taobao/statistic/core/h$a;->ls:Lcom/taobao/statistic/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc00

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    .line 41
    const/16 v0, 0x141a

    iput v0, p0, Lcom/taobao/statistic/core/h$a;->ln:I

    .line 44
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/statistic/core/h$a;->lo:[B

    .line 46
    iput-boolean v2, p0, Lcom/taobao/statistic/core/h$a;->lp:Z

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/h$a;->lq:Ljava/util/Random;

    .line 53
    iput v2, p0, Lcom/taobao/statistic/core/h$a;->lr:I

    .line 56
    iput-boolean p2, p0, Lcom/taobao/statistic/core/h$a;->lp:Z

    .line 57
    return-void
.end method

.method private O(I)Ljava/lang/String;
    .locals 5
    .parameter "pLevel"

    .prologue
    .line 144
    if-gez p1, :cond_0

    .line 145
    const/4 p1, 0x0

    .line 147
    :cond_0
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 148
    const/16 p1, 0x9

    .line 150
    :cond_1
    const-string v0, "Res_%s_%s_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/taobao/statistic/core/h$a;->lq:Ljava/util/Random;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private P(I)Z
    .locals 5
    .parameter "level"

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-direct {p0, v3}, Lcom/taobao/statistic/core/h$a;->k(Z)[B

    move-result-object v2

    .line 164
    .local v2, resultBytes:[B
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 165
    invoke-static {v2}, Lorg/usertrack/a/a/a/a/a;->k([B)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, base64PackageStr:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcom/taobao/statistic/core/h$a;->O(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, lSaveKey:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/taobao/statistic/core/h$a;->lp:Z

    if-eqz v3, :cond_0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_delay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/taobao/statistic/core/h$a;->ls:Lcom/taobao/statistic/core/h;

    invoke-static {v3}, Lcom/taobao/statistic/core/h;->d(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bT()Lcom/taobao/statistic/module/f/a;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/taobao/statistic/module/f/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v3, 0x1

    .line 177
    .end local v0           #base64PackageStr:Ljava/lang/String;
    .end local v1           #lSaveKey:Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private declared-synchronized k(Z)[B
    .locals 17
    .parameter "isUsedImage"

    .prologue
    .line 186
    monitor-enter p0

    const/4 v10, 0x0

    .line 187
    .local v10, resultBytes:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    int-to-short v11, v14

    .line 188
    .local v11, sessionBufferSize:S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    int-to-short v13, v14

    .line 189
    .local v13, tracesBufferSize:S
    if-lez v11, :cond_1

    if-lez v13, :cond_1

    .line 190
    const/4 v5, 0x0

    .line 192
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-static {v11}, Lorg/usertrack/android/utils/n;->a(S)[B

    move-result-object v9

    .line 196
    .local v9, intBytes:[B
    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 199
    .local v3, bSessionBuffer:[B
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 202
    .local v4, bTracesBuffer:[B
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 204
    add-int v14, v11, v13

    add-int/lit8 v14, v14, 0x2

    int-to-short v2, v14

    .line 207
    .local v2, bCompressedSize:S
    const/4 v1, 0x0

    .line 209
    .local v1, bCompressedPackage:[B
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/statistic/core/h$a;->ln:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v15, v2, v0}, Lorg/usertrack/android/utils/NDKUtils;->Compress([BIII)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    .line 215
    :goto_0
    if-eqz v1, :cond_0

    .line 217
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 219
    const/4 v14, 0x0

    invoke-static {v14}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v9

    .line 220
    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    array-length v14, v1

    int-to-short v7, v14

    .line 223
    .local v7, cSize:S
    invoke-static {v7}, Lorg/usertrack/android/utils/n;->a(S)[B

    move-result-object v12

    .line 225
    .local v12, shortBytes:[B
    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 227
    invoke-static {v2}, Lorg/usertrack/android/utils/n;->a(S)[B

    move-result-object v12

    .line 229
    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 231
    move-object/from16 v0, p0

    iget v14, v0, Lcom/taobao/statistic/core/h$a;->lr:I

    int-to-short v14, v14

    invoke-static {v14}, Lorg/usertrack/android/utils/n;->a(S)[B

    move-result-object v12

    .line 233
    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/statistic/core/h$a;->lo:[B

    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 236
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 237
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .line 242
    .end local v7           #cSize:S
    .end local v12           #shortBytes:[B
    :cond_0
    if-eqz v6, :cond_1

    .line 244
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 248
    :goto_1
    const/4 v5, 0x0

    .line 252
    .end local v1           #bCompressedPackage:[B
    .end local v2           #bCompressedSize:S
    .end local v3           #bSessionBuffer:[B
    .end local v4           #bTracesBuffer:[B
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #intBytes:[B
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v10

    .line 245
    .restart local v1       #bCompressedPackage:[B
    .restart local v2       #bCompressedSize:S
    .restart local v3       #bSessionBuffer:[B
    .restart local v4       #bTracesBuffer:[B
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #intBytes:[B
    :catch_0
    move-exception v8

    .line 246
    .local v8, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 186
    .end local v1           #bCompressedPackage:[B
    .end local v2           #bCompressedSize:S
    .end local v3           #bSessionBuffer:[B
    .end local v4           #bTracesBuffer:[B
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #intBytes:[B
    .end local v11           #sessionBufferSize:S
    .end local v13           #tracesBufferSize:S
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 239
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #sessionBufferSize:S
    .restart local v13       #tracesBufferSize:S
    :catch_1
    move-exception v14

    .line 242
    :goto_3
    if-eqz v5, :cond_1

    .line 244
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 248
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 245
    :catch_2
    move-exception v8

    .line 246
    .restart local v8       #e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 242
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v14

    :goto_5
    if-eqz v5, :cond_2

    .line 244
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 248
    :goto_6
    const/4 v5, 0x0

    :cond_2
    :try_start_a
    throw v14

    .line 245
    :catch_3
    move-exception v8

    .line 246
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 242
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 239
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v14

    move-object v5, v6

    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 212
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bCompressedPackage:[B
    .restart local v2       #bCompressedSize:S
    .restart local v3       #bSessionBuffer:[B
    .restart local v4       #bTracesBuffer:[B
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #intBytes:[B
    :catch_5
    move-exception v14

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized N(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/statistic/core/h$a;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 106
    const/4 v0, 0x2

    const-string v1, "Flush"

    const-string v2, "Success"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f([B)Z
    .locals 3
    .parameter "data"

    .prologue
    .line 60
    monitor-enter p0

    const/4 v1, 0x0

    .line 61
    .local v1, writeFlag:Z
    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 64
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/taobao/statistic/core/h$a;->P(I)Z

    .line 65
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    const/4 v1, 0x1

    .line 73
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->ls:Lcom/taobao/statistic/core/h;

    invoke-static {v2}, Lcom/taobao/statistic/core/h;->a(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/b;->onCaughException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 75
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :try_start_5
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 78
    const/4 v1, 0x1

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->ls:Lcom/taobao/statistic/core/h;

    invoke-static {v2}, Lcom/taobao/statistic/core/h;->b(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/b;->onCaughException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_7
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->lm:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 87
    const/4 v1, 0x1

    goto :goto_1

    .line 88
    :catch_2
    move-exception v0

    .line 89
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    iget-object v2, p0, Lcom/taobao/statistic/core/h$a;->ls:Lcom/taobao/statistic/core/h;

    invoke-static {v2}, Lcom/taobao/statistic/core/h;->c(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/b;->onCaughException(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized g([B)Z
    .locals 6
    .parameter "data"

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x0

    .line 118
    .local v0, lIsFillFull:Z
    if-eqz p1, :cond_3

    :try_start_0
    array-length v3, p1

    if-lez v3, :cond_3

    .line 119
    array-length v3, p1

    int-to-short v1, v3

    .line 121
    .local v1, length:S
    add-int/lit8 v3, v1, 0x4

    iget-object v4, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0xc00

    if-le v3, v4, :cond_1

    .line 122
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/taobao/statistic/core/h$a;->P(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 125
    :cond_0
    const/4 v0, 0x1

    .line 128
    :cond_1
    invoke-static {v1}, Lorg/usertrack/android/utils/n;->a(S)[B

    move-result-object v2

    .line 130
    .local v2, shortBytes:[B
    iget-object v3, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 131
    const/4 v3, 0x0

    iput v3, p0, Lcom/taobao/statistic/core/h$a;->lr:I

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 135
    iget-object v3, p0, Lcom/taobao/statistic/core/h$a;->ll:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    iget v3, p0, Lcom/taobao/statistic/core/h$a;->lr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/statistic/core/h$a;->lr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v1           #length:S
    .end local v2           #shortBytes:[B
    :cond_3
    monitor-exit p0

    return v0

    .line 117
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
