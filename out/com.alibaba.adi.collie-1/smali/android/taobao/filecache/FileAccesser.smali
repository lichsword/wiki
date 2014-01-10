.class public Landroid/taobao/filecache/FileAccesser;
.super Ljava/lang/Object;
.source "FileAccesser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static hasFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 23
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static read(Ljava/lang/String;)[B
    .locals 11
    .parameter "fileName"

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 32
    .local v5, time:J
    const/4 v3, 0x0

    .line 33
    .local v3, fileInput:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 36
    .local v1, channel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .local v4, fileInput:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 47
    const-string v7, "FileAccesser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read time cost:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v7

    .line 64
    if-eqz v4, :cond_0

    .line 66
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v3, v4

    .line 78
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v4           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-object v7

    .line 67
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    .restart local v4       #fileInput:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 77
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 51
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    const/4 v7, 0x0

    .line 64
    if-eqz v3, :cond_3

    .line 66
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 72
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-eqz v1, :cond_2

    .line 74
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 75
    :catch_3
    move-exception v2

    .line 77
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 64
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_4

    .line 66
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 72
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 74
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 78
    :cond_5
    :goto_7
    throw v7

    .line 67
    :catch_5
    move-exception v2

    .line 69
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 77
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 64
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v4       #fileInput:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    goto :goto_5

    .line 49
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v4       #fileInput:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .locals 13
    .parameter "fileName"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/filecache/NotEnoughSpace;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 89
    .local v7, time:J
    const/4 v4, 0x0

    .line 91
    .local v4, fileOutput:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 92
    .local v0, channel:Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 94
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 95
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 99
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 101
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .local v5, fileOutput:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 111
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 113
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 114
    const-string v9, "FileAccesser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "write time cost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 115
    const/4 v9, 0x1

    .line 151
    if-eqz v5, :cond_1

    .line 153
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 161
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .line 165
    .end local v5           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutput:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return v9

    .line 154
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutput:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileOutput:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 118
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, msg:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 120
    const-string v9, "ENOSPC"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    new-instance v9, Landroid/taobao/filecache/NotEnoughSpace;

    const-string v10, "not enouth space in flash"

    invoke-direct {v9, v10}, Landroid/taobao/filecache/NotEnoughSpace;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v4, :cond_4

    .line 153
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 159
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 161
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 165
    :cond_5
    :goto_6
    throw v9

    .line 127
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v6       #msg:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    .line 128
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 129
    :cond_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 130
    const/4 v9, 0x0

    .line 151
    if-eqz v4, :cond_8

    .line 153
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 159
    :cond_8
    :goto_7
    if-eqz v0, :cond_3

    .line 161
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 162
    :catch_3
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 154
    :catch_4
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #msg:Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    :goto_8
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    if-eqz v2, :cond_9

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 138
    :cond_9
    const/4 v9, 0x0

    .line 151
    if-eqz v4, :cond_a

    .line 153
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 159
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    :goto_9
    if-eqz v0, :cond_3

    .line 161
    :try_start_d
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_2

    .line 162
    :catch_6
    move-exception v1

    .line 164
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 154
    .local v1, e:Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 154
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 156
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 162
    .end local v1           #e:Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 151
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 131
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_8

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutput:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 116
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_c
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutput:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_3
.end method
