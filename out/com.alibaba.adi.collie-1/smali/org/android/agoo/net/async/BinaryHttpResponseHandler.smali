.class public Lorg/android/agoo/net/async/BinaryHttpResponseHandler;
.super Lorg/android/agoo/net/async/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "allowedContentTypes"

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 53
    return-void
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 68
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->handleSuccessMessage([B)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 62
    .local v0, response:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v1, v2}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleSuccessMessage([B)V
    .locals 0
    .parameter "responseBody"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 49
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0
    .parameter "error"
    .parameter "binaryData"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .parameter "binaryData"

    .prologue
    .line 31
    return-void
.end method

.method public sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 45
    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 17
    .parameter "response"

    .prologue
    .line 71
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 72
    .local v12, status:Lorg/apache/http/StatusLine;
    const-string v14, "Content-Type"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 73
    .local v4, contentTypeHeaders:[Lorg/apache/http/Header;
    const/4 v11, 0x0

    .line 74
    .local v11, responseBody:[B
    array-length v14, v4

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 75
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const-string v16, "None, or more than one, Content-Type Header found!"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 109
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v14, 0x0

    aget-object v3, v4, v14

    .line 80
    .local v3, contentTypeHeader:Lorg/apache/http/Header;
    const/4 v8, 0x0

    .line 81
    .local v8, foundAllowedContentType:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v1, v2, v9

    .line 82
    .local v1, anAllowedContentType:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 83
    const/4 v8, 0x1

    .line 81
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 86
    .end local v1           #anAllowedContentType:Ljava/lang/String;
    :cond_2
    if-nez v8, :cond_3

    .line 87
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const-string v16, "Content-Type not allowed!"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 92
    :cond_3
    const/4 v6, 0x0

    .line 93
    .local v6, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 94
    .local v13, temp:Lorg/apache/http/HttpEntity;
    if-eqz v13, :cond_4

    .line 95
    new-instance v7, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v7, v13}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .local v7, entity:Lorg/apache/http/HttpEntity;
    move-object v6, v7

    .line 97
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 102
    .end local v13           #temp:Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0x12c

    if-lt v14, v15, :cond_5

    .line 103
    new-instance v14, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v5

    .line 99
    .local v5, e:Ljava/io/IOException;
    const/4 v14, 0x0

    check-cast v14, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 107
    .end local v5           #e:Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendSuccessMessage([B)V

    goto :goto_0
.end method

.method public sendSuccessMessage([B)V
    .locals 1
    .parameter "responseBody"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 39
    return-void
.end method
