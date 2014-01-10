.class public Landroid/taobao/apirequest/SSLTunnelSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLTunnelSocketFactory.java"


# instance fields
.field private dfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private tunnelHost:Ljava/lang/String;

.field private tunnelPort:I

.field private useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V
    .locals 1
    .parameter "proxyhost"
    .parameter "proxyport"
    .parameter "socketfactory"
    .parameter "user_agent"

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->tunnelHost:Ljava/lang/String;

    .line 40
    iput p2, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->tunnelPort:I

    .line 42
    if-eqz p3, :cond_0

    .line 43
    iput-object p3, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    :goto_0
    iput-object p4, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->useragent:Ljava/lang/String;

    .line 47
    return-void

    .line 45
    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method private doTunnelHandshake(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 16
    .parameter "tunnel"
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 96
    .local v8, out:Ljava/io/OutputStream;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CONNECT "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " HTTP/1.1\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "User-Agent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->useragent:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Host:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, msg:Ljava/lang/String;
    :try_start_0
    const-string v13, "ASCII7"

    invoke-virtual {v6, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .local v1, b:[B
    :goto_0
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 118
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 124
    const/16 v13, 0xc8

    new-array v9, v13, [B

    .line 125
    .local v9, reply:[B
    const/4 v10, 0x0

    .line 126
    .local v10, replyLen:I
    const/4 v7, 0x0

    .line 127
    .local v7, newlinesSeen:I
    const/4 v2, 0x0

    .line 129
    .local v2, headerDone:Z
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .local v5, in:Ljava/io/InputStream;
    move v11, v10

    .line 131
    .end local v10           #replyLen:I
    .local v11, replyLen:I
    :goto_1
    const/4 v13, 0x2

    if-ge v7, v13, :cond_2

    .line 132
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 133
    .local v3, i:I
    if-gez v3, :cond_0

    .line 134
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Unexpected EOF from proxy"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 110
    .end local v1           #b:[B
    .end local v2           #headerDone:Z
    .end local v3           #i:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #newlinesSeen:I
    .end local v9           #reply:[B
    .end local v11           #replyLen:I
    :catch_0
    move-exception v4

    .line 115
    .local v4, ignored:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1       #b:[B
    goto :goto_0

    .line 136
    .end local v4           #ignored:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #headerDone:Z
    .restart local v3       #i:I
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v7       #newlinesSeen:I
    .restart local v9       #reply:[B
    .restart local v11       #replyLen:I
    :cond_0
    const/16 v13, 0xa

    if-ne v3, v13, :cond_1

    .line 137
    const/4 v2, 0x1

    .line 138
    add-int/lit8 v7, v7, 0x1

    move v10, v11

    .end local v11           #replyLen:I
    .restart local v10       #replyLen:I
    :goto_2
    move v11, v10

    .line 145
    .end local v10           #replyLen:I
    .restart local v11       #replyLen:I
    goto :goto_1

    .line 139
    :cond_1
    const/16 v13, 0xd

    if-eq v3, v13, :cond_4

    .line 140
    const/4 v7, 0x0

    .line 141
    if-nez v2, :cond_4

    array-length v13, v9

    if-ge v11, v13, :cond_4

    .line 142
    add-int/lit8 v10, v11, 0x1

    .end local v11           #replyLen:I
    .restart local v10       #replyLen:I
    int-to-byte v13, v3

    aput-byte v13, v9, v11

    goto :goto_2

    .line 154
    .end local v3           #i:I
    .end local v10           #replyLen:I
    .restart local v11       #replyLen:I
    :cond_2
    :try_start_1
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ASCII7"

    invoke-direct {v12, v9, v13, v11, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .local v12, replyStr:Ljava/lang/String;
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "200 connection established"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 161
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to tunnel through "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->tunnelHost:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->tunnelPort:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".  Proxy returns \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 155
    .end local v12           #replyStr:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 156
    .restart local v4       #ignored:Ljava/io/UnsupportedEncodingException;
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13, v11}, Ljava/lang/String;-><init>([BII)V

    .restart local v12       #replyStr:Ljava/lang/String;
    goto :goto_3

    .line 167
    .end local v4           #ignored:Ljava/io/UnsupportedEncodingException;
    :cond_3
    return-void

    .end local v12           #replyStr:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_4
    move v10, v11

    .end local v11           #replyLen:I
    .restart local v10       #replyLen:I
    goto :goto_2
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "clientHost"
    .parameter "clientPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 4
    .parameter "s"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->tunnelHost:Ljava/lang/String;

    iget v3, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->tunnelPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v1, tunnel:Ljava/net/Socket;
    invoke-direct {p0, v1, p2, p3}, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->doTunnelHandshake(Ljava/net/Socket;Ljava/lang/String;I)V

    .line 75
    iget-object v2, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 78
    .local v0, result:Ljavax/net/ssl/SSLSocket;
    new-instance v2, Landroid/taobao/apirequest/SSLTunnelSocketFactory$1;

    invoke-direct {v2, p0}, Landroid/taobao/apirequest/SSLTunnelSocketFactory$1;-><init>(Landroid/taobao/apirequest/SSLTunnelSocketFactory;)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 88
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 90
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/taobao/apirequest/SSLTunnelSocketFactory;->dfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
