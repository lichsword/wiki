.class public Landroid/taobao/nativewebview/HtmlDownloader;
.super Ljava/lang/Object;
.source "HtmlDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/taobao/nativewebview/WebListener;


# instance fields
.field private context:Landroid/app/Application;

.field private data:[B

.field private enableCache:Z

.field private helper:Landroid/taobao/nativewebview/WebViewHelper;

.field private listener:Landroid/taobao/nativewebview/WebListener;

.field private mFilterMode:I

.field private requestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private token:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Landroid/taobao/nativewebview/WebListener;Ljava/util/Map;Ljava/lang/String;IZ)V
    .locals 1
    .parameter "context"
    .parameter "ua"
    .parameter "listener"
    .parameter
    .parameter "url"
    .parameter "token"
    .parameter "enableCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Landroid/taobao/nativewebview/WebListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p4, requestHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->mFilterMode:I

    .line 56
    iput-object p1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->context:Landroid/app/Application;

    .line 57
    iput-boolean p7, p0, Landroid/taobao/nativewebview/HtmlDownloader;->enableCache:Z

    .line 58
    iput p6, p0, Landroid/taobao/nativewebview/HtmlDownloader;->token:I

    .line 59
    iput-object p3, p0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    .line 60
    if-eqz p4, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    .line 64
    :goto_0
    new-instance v0, Landroid/taobao/nativewebview/WebViewHelper;

    invoke-direct {v0, p5}, Landroid/taobao/nativewebview/WebViewHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->helper:Landroid/taobao/nativewebview/WebViewHelper;

    .line 66
    iput-object p5, p0, Landroid/taobao/nativewebview/HtmlDownloader;->url:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    .line 71
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public addFilterMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 39
    iget v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->mFilterMode:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->mFilterMode:I

    .line 40
    return-void
.end method

.method public callback([BLjava/util/Map;I)V
    .locals 6
    .parameter "data"
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 208
    :try_start_0
    const-string v1, "url"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    const-string v1, "HtmlDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resList size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    iget-object v1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    iget-object v3, p0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    iget-object v4, p0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    iget v5, p0, Landroid/taobao/nativewebview/HtmlDownloader;->token:I

    invoke-interface {v1, v3, v4, v5}, Landroid/taobao/nativewebview/WebListener;->callback([BLjava/util/Map;I)V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    .line 220
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    return-void

    .line 220
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 223
    .end local v0           #url:Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    :cond_0
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 80
    new-instance v7, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v7}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 81
    .local v7, property:Landroid/taobao/apirequest/ApiProperty;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/taobao/apirequest/ApiProperty;->setFollowRedirects(Z)V

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    invoke-virtual {v7, v14}, Landroid/taobao/apirequest/ApiProperty;->setConnectionHeader(Ljava/util/Map;)V

    .line 83
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/nativewebview/HtmlDownloader;->helper:Landroid/taobao/nativewebview/WebViewHelper;

    invoke-virtual {v15}, Landroid/taobao/nativewebview/WebViewHelper;->getApiUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Ljava/lang/String;Landroid/taobao/apirequest/ApiProperty;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v8

    .line 85
    .local v8, res:Landroid/taobao/apirequest/ApiResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "con_res"

    iget v0, v8, Landroid/taobao/apirequest/ApiResult;->resultCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v8}, Landroid/taobao/apirequest/ApiResult;->isSuccess()Z

    move-result v14

    if-nez v14, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->helper:Landroid/taobao/nativewebview/WebViewHelper;

    const/4 v15, 0x0

    new-array v15, v15, [B

    invoke-virtual {v14, v15}, Landroid/taobao/nativewebview/WebViewHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    .line 96
    :goto_0
    const/4 v14, 0x0

    iput-object v14, v8, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    if-eqz v14, :cond_a

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, html:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    if-eqz v14, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "content-type"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, charset:Ljava/lang/String;
    const-string v14, "HtmlDownloader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http charset:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Landroid/taobao/nativewebview/ResUtil;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-nez v1, :cond_0

    .line 108
    const-string v14, "HtmlDownloader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "default charset:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "utf-8"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    invoke-direct {v5, v14, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #html:Ljava/lang/String;
    .local v5, html:Ljava/lang/String;
    move-object v4, v5

    .line 118
    .end local v5           #html:Ljava/lang/String;
    .restart local v4       #html:Ljava/lang/String;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "html_content"

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "charset"

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v1           #charset:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "content-type"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, contentType:Ljava/lang/String;
    const-string v14, "HtmlDownloader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "content-type:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz v2, :cond_9

    const-string v14, "text/html"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v4, :cond_9

    .line 127
    move-object/from16 v0, p0

    iget v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->mFilterMode:I

    invoke-static {v4, v14}, Landroid/taobao/nativewebview/ResUtil;->filtrate(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, resListStr:[Ljava/lang/String;
    if-nez v10, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->token:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/taobao/nativewebview/WebListener;->callback([BLjava/util/Map;I)V

    .line 132
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v2           #contentType:Ljava/lang/String;
    .end local v4           #html:Ljava/lang/String;
    .end local v10           #resListStr:[Ljava/lang/String;
    :goto_2
    return-void

    .line 93
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->helper:Landroid/taobao/nativewebview/WebViewHelper;

    iget-object v15, v8, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    invoke-virtual {v14, v15}, Landroid/taobao/nativewebview/WebViewHelper;->syncPaser([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    goto/16 :goto_0

    .line 114
    .restart local v1       #charset:Ljava/lang/String;
    .restart local v4       #html:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 116
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v1           #charset:Ljava/lang/String;
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #html:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    .line 135
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v4       #html:Ljava/lang/String;
    .restart local v10       #resListStr:[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    :try_start_4
    array-length v14, v10

    if-ge v6, v14, :cond_7

    .line 136
    const-string v14, "HtmlDownloader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "res url:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    aget-object v14, v10, v6

    const-string v15, "http"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-nez v14, :cond_4

    .line 139
    :try_start_5
    new-instance v14, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/nativewebview/HtmlDownloader;->url:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aget-object v15, v10, v6

    invoke-static {v14, v15}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, tmp:Ljava/lang/String;
    aget-object v14, v10, v6

    invoke-virtual {v4, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    const-string v15, "html_content"

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    aput-object v12, v10, v6

    .line 144
    const-string v14, "HtmlDownloader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "absolute res url:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .line 151
    .end local v12           #tmp:Ljava/lang/String;
    :cond_4
    :goto_4
    :try_start_6
    aget-object v14, v10, v6

    invoke-static {v14}, Landroid/taobao/nativewebview/CacheMgr;->getCacheInfo(Ljava/lang/String;)Landroid/taobao/nativewebview/CacheMgr$WebResHeader;

    move-result-object v9

    .line 153
    .local v9, resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->enableCache:Z

    if-eqz v14, :cond_5

    if-eqz v9, :cond_5

    iget-wide v14, v9, Landroid/taobao/nativewebview/CacheMgr$WebResHeader;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_6

    .line 154
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    aget-object v15, v10, v6

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 146
    .end local v9           #resHeader:Landroid/taobao/nativewebview/CacheMgr$WebResHeader;
    :catch_1
    move-exception v3

    .line 148
    .local v3, e:Ljava/net/URISyntaxException;
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_4

    .line 158
    .end local v3           #e:Ljava/net/URISyntaxException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 160
    .local v11, size:I
    if-nez v11, :cond_8

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->token:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/taobao/nativewebview/WebListener;->callback([BLjava/util/Map;I)V

    .line 162
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->resList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v13

    .line 165
    .local v13, urls:[Ljava/lang/Object;
    const/4 v6, 0x0

    :goto_5
    array-length v14, v13

    if-ge v6, v14, :cond_a

    .line 167
    const-string v14, "HtmlDownloader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "need download res url:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/nativewebview/HtmlDownloader;->context:Landroid/app/Application;

    aget-object v14, v13, v6

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v15, v14, v0}, Landroid/taobao/nativewebview/ResDownloaderMgr;->downloadRes(Landroid/app/Application;Ljava/lang/String;Landroid/taobao/nativewebview/WebListener;)V

    .line 165
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 177
    .end local v6           #i:I
    .end local v10           #resListStr:[Ljava/lang/String;
    .end local v11           #size:I
    .end local v13           #urls:[Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/nativewebview/HtmlDownloader;->data:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/taobao/nativewebview/HtmlDownloader;->token:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/taobao/nativewebview/WebListener;->callback([BLjava/util/Map;I)V

    .line 178
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/taobao/nativewebview/HtmlDownloader;->requestHeader:Ljava/util/Map;

    .line 182
    .end local v2           #contentType:Ljava/lang/String;
    .end local v4           #html:Ljava/lang/String;
    :cond_a
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public declared-synchronized setListener(Landroid/taobao/nativewebview/WebListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/taobao/nativewebview/HtmlDownloader;->listener:Landroid/taobao/nativewebview/WebListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
