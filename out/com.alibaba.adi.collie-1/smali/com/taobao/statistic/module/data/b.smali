.class public final Lcom/taobao/statistic/module/data/b;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;)[B
    .locals 26
    .parameter "requestType"
    .parameter "aUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, pMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static/range {p1 .. p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 74
    const/16 v22, 0x0

    .line 232
    :cond_0
    :goto_0
    return-object v22

    .line 76
    :cond_1
    const/16 v20, 0x0

    .line 77
    .local v20, url:Ljava/net/URL;
    const/4 v4, 0x0

    .line 79
    .local v4, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .end local v20           #url:Ljava/net/URL;
    .local v21, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .end local v4           #conn:Ljava/net/HttpURLConnection;
    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 89
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    if-eqz v4, :cond_18

    .line 90
    const/16 v22, 0x2

    move/from16 v0, p0

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x3

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 92
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 94
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 96
    const/16 v22, 0x2

    move/from16 v0, p0

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0x3

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 98
    :cond_4
    :try_start_2
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 106
    :goto_1
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 107
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    const/16 v22, 0x7530

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 109
    const-string v22, "Connection"

    const-string v23, "Keep-Alive"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 112
    const/4 v6, 0x0

    .line 114
    .local v6, data:[B
    const/16 v22, 0x2

    move/from16 v0, p0

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v22, 0x3

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 117
    :cond_5
    const/16 v22, 0x2

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 118
    const-string v22, "Content-Type"

    const-string v23, "multipart/form-data; boundary=android_BOUNDARY"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_6
    :goto_2
    const/4 v5, 0x0

    .line 126
    .local v5, contentLength:I
    if-eqz p2, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 127
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v14, lBaos:Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 129
    .local v13, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 130
    .local v12, key:Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 131
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v15, v22

    check-cast v15, [B

    .line 132
    .local v15, lValue:[B
    if-eqz v15, :cond_7

    .line 134
    :try_start_3
    const-string v22, "--android_BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v12, v23, v24

    const/16 v24, 0x1

    aput-object v12, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    const-string v22, "\r\n--android_BOUNDARY--\r\n"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 138
    :catch_0
    move-exception v8

    .line 139
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 81
    .end local v5           #contentLength:I
    .end local v6           #data:[B
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14           #lBaos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #lValue:[B
    .end local v21           #url:Ljava/net/URL;
    .restart local v20       #url:Ljava/net/URL;
    :catch_1
    move-exception v9

    .line 82
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .local v9, e1:Ljava/net/MalformedURLException;
    :goto_4
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 83
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 84
    .end local v9           #e1:Ljava/net/MalformedURLException;
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v9

    .line 85
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .local v9, e1:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 100
    .end local v9           #e1:Ljava/io/IOException;
    .end local v20           #url:Ljava/net/URL;
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    .restart local v21       #url:Ljava/net/URL;
    :cond_8
    :try_start_4
    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 102
    :catch_3
    move-exception v8

    .line 103
    .local v8, e:Ljava/net/ProtocolException;
    invoke-virtual {v8}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 104
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 120
    .end local v8           #e:Ljava/net/ProtocolException;
    .restart local v6       #data:[B
    :cond_9
    const/16 v22, 0x3

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 121
    const-string v22, "Content-Type"

    const-string v23, "application/x-www-form-urlencoded"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    .restart local v5       #contentLength:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14       #lBaos:Ljava/io/ByteArrayOutputStream;
    :cond_a
    const/16 v22, 0x3

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 143
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 144
    .local v15, lValue:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v22

    if-lez v22, :cond_b

    .line 146
    :try_start_5
    const-string v22, "&%s=%s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v12, v23, v24

    const/16 v24, 0x1

    aput-object v15, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 147
    :catch_4
    move-exception v8

    .line 148
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 152
    .end local v8           #e:Ljava/io/IOException;
    :cond_b
    :try_start_6
    const-string v22, "%s=%s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v12, v23, v24

    const/16 v24, 0x1

    aput-object v15, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 153
    :catch_5
    move-exception v8

    .line 154
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 159
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #key:Ljava/lang/String;
    .end local v15           #lValue:Ljava/lang/String;
    :cond_c
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 161
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14           #lBaos:Ljava/io/ByteArrayOutputStream;
    :cond_d
    if-eqz v6, :cond_e

    .line 162
    array-length v5, v6

    .line 164
    :cond_e
    const-string v22, "Content-Length"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v5           #contentLength:I
    :cond_f
    const/16 v16, 0x0

    .line 171
    .local v16, out:Ljava/io/DataOutputStream;
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 173
    const/16 v22, 0x2

    move/from16 v0, p0

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    const/16 v22, 0x3

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    :cond_10
    if-eqz v6, :cond_11

    array-length v0, v6

    move/from16 v22, v0

    if-lez v22, :cond_11

    .line 175
    new-instance v17, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 176
    .end local v16           #out:Ljava/io/DataOutputStream;
    .local v17, out:Ljava/io/DataOutputStream;
    :try_start_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 177
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 178
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v16, v17

    .line 184
    .end local v17           #out:Ljava/io/DataOutputStream;
    .restart local v16       #out:Ljava/io/DataOutputStream;
    :cond_11
    if-eqz v16, :cond_12

    .line 186
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 190
    :goto_6
    const/16 v16, 0x0

    .line 195
    :cond_12
    const/4 v7, 0x0

    .line 197
    .local v7, dis:Ljava/io/DataInputStream;
    :try_start_a
    new-instance v7, Ljava/io/DataInputStream;

    .end local v7           #dis:Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 203
    .restart local v7       #dis:Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 204
    .local v2, bs:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #bs:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    .restart local v2       #bs:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 206
    .local v18, startTime:J
    const/16 v22, 0x800

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 207
    .local v3, buffer:[B
    const/4 v10, 0x0

    .line 209
    .local v10, i:I
    :cond_13
    const/16 v22, 0x0

    const/16 v23, 0x800

    :try_start_b
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v3, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_14

    .line 210
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v18

    const-wide/16 v24, 0x2710

    cmp-long v22, v22, v24

    if-lez v22, :cond_13

    .line 213
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 221
    :cond_14
    :goto_7
    if-eqz v4, :cond_15

    .line 222
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 223
    const/4 v4, 0x0

    .line 226
    :cond_15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v22

    if-lez v22, :cond_17

    .line 227
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    goto/16 :goto_0

    .line 187
    .end local v2           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v7           #dis:Ljava/io/DataInputStream;
    .end local v10           #i:I
    .end local v18           #startTime:J
    :catch_6
    move-exception v8

    .line 188
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 180
    .end local v8           #e:Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 181
    .local v8, e:Ljava/lang/Exception;
    :goto_8
    :try_start_c
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 182
    const/16 v22, 0x0

    .line 184
    if-eqz v16, :cond_0

    .line 186
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 190
    .end local v8           #e:Ljava/lang/Exception;
    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v8       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v8

    .line 188
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 184
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_a
    if-eqz v16, :cond_16

    .line 186
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 190
    :goto_b
    const/16 v16, 0x0

    :cond_16
    throw v22

    .line 187
    :catch_9
    move-exception v8

    .line 188
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 198
    .end local v8           #e:Ljava/io/IOException;
    :catch_a
    move-exception v8

    .line 199
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 217
    .end local v8           #e:Ljava/io/IOException;
    .restart local v2       #bs:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v7       #dis:Ljava/io/DataInputStream;
    .restart local v10       #i:I
    .restart local v18       #startTime:J
    :catch_b
    move-exception v8

    .line 218
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 229
    .end local v8           #e:Ljava/io/IOException;
    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 232
    .end local v2           #bs:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v6           #data:[B
    .end local v7           #dis:Ljava/io/DataInputStream;
    .end local v10           #i:I
    .end local v16           #out:Ljava/io/DataOutputStream;
    .end local v18           #startTime:J
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 184
    .restart local v6       #data:[B
    .restart local v17       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v22

    move-object/from16 v16, v17

    .end local v17           #out:Ljava/io/DataOutputStream;
    .restart local v16       #out:Ljava/io/DataOutputStream;
    goto :goto_a

    .line 180
    .end local v16           #out:Ljava/io/DataOutputStream;
    .restart local v17       #out:Ljava/io/DataOutputStream;
    :catch_c
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #out:Ljava/io/DataOutputStream;
    .restart local v16       #out:Ljava/io/DataOutputStream;
    goto :goto_8

    .line 84
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #data:[B
    .end local v16           #out:Ljava/io/DataOutputStream;
    :catch_d
    move-exception v9

    move-object/from16 v20, v21

    .end local v21           #url:Ljava/net/URL;
    .restart local v20       #url:Ljava/net/URL;
    goto/16 :goto_5

    .line 81
    .end local v20           #url:Ljava/net/URL;
    .restart local v21       #url:Ljava/net/URL;
    :catch_e
    move-exception v9

    move-object/from16 v20, v21

    .end local v21           #url:Ljava/net/URL;
    .restart local v20       #url:Ljava/net/URL;
    goto/16 :goto_4
.end method
