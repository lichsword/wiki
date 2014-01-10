.class Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;
.super Ljava/lang/Object;
.source "KakaLibMTopParserHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/AsyncDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/api/KakaLibMTopParserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAsyncDataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/taobao/apirequest/AsyncDataListener;"
    }
.end annotation


# instance fields
.field private beanClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private typeReference:Lcom/alibaba/fastjson/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/etao/kakalib/api/HttpRequstCallback;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)V
    .locals 0
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/etao/kakalib/api/HttpRequstCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;,"Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener<TT;>;"
    .local p2, requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;,"Lcom/etao/kakalib/api/HttpRequstCallback<TT;>;"
    .local p3, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, typeReference:Lcom/alibaba/fastjson/TypeReference;,"Lcom/alibaba/fastjson/TypeReference<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->url:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    .line 237
    iput-object p3, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->beanClazz:Ljava/lang/Class;

    .line 238
    iput-object p4, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->typeReference:Lcom/alibaba/fastjson/TypeReference;

    .line 239
    return-void
.end method


# virtual methods
.method public onDataArrive(Landroid/taobao/apirequest/ApiResult;)V
    .locals 9
    .parameter "apiResult"

    .prologue
    .line 253
    .local p0, this:Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;,"Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener<TT;>;"
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v5, p1, Landroid/taobao/apirequest/ApiResult;->bytedata:[B

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 254
    .local v2, jsonText:Ljava/lang/String;
    new-instance v0, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 256
    .local v0, apiResponse:Landroid/taobao/apirequest/ApiResponse;
    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, result:Ljava/lang/Object;,"TT;"
    iget-boolean v5, v0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v5, :cond_4

    .line 259
    iget-object v5, v0, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, rawObjJson:Ljava/lang/String;
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->beanClazz:Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 261
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->beanClazz:Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 265
    .end local v4           #result:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    if-eqz v5, :cond_1

    .line 266
    if-nez v4, :cond_3

    .line 267
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    .line 268
    new-instance v6, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    .line 269
    const-string v7, "error"

    const-string v8, "resultNull"

    .line 268
    invoke-direct {v6, v7, v8}, Lcom/etao/kakalib/api/KakaLibMTopRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/etao/kakalib/api/HttpRequstCallback;->onHttpLoadingFailed(Ljava/lang/Throwable;)V

    .line 284
    .end local v0           #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .end local v2           #jsonText:Ljava/lang/String;
    .end local v3           #rawObjJson:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 262
    .restart local v0       #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .restart local v2       #jsonText:Ljava/lang/String;
    .restart local v3       #rawObjJson:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/Object;,"TT;"
    :cond_2
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->typeReference:Lcom/alibaba/fastjson/TypeReference;

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->typeReference:Lcom/alibaba/fastjson/TypeReference;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v3, v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 271
    .end local v4           #result:Ljava/lang/Object;,"TT;"
    :cond_3
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    invoke-virtual {v5, v4, v3}, Lcom/etao/kakalib/api/HttpRequstCallback;->onHttpLoadingEnded(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    .end local v0           #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .end local v2           #jsonText:Ljava/lang/String;
    .end local v3           #rawObjJson:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "KakaLibMTopParserHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->url:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "apiDataparseError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    if-eqz v5, :cond_1

    .line 281
    iget-object v5, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    invoke-virtual {v5, v1}, Lcom/etao/kakalib/api/HttpRequstCallback;->onHttpLoadingFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 275
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .restart local v2       #jsonText:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/Object;,"TT;"
    :cond_4
    :try_start_1
    new-instance v5, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    iget-object v6, v0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 276
    iget-object v7, v0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    .line 275
    invoke-direct {v5, v6, v7}, Lcom/etao/kakalib/api/KakaLibMTopRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 1
    .parameter "desc"
    .parameter "size"
    .parameter "total"

    .prologue
    .line 243
    .local p0, this:Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;,"Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener<TT;>;"
    iget-object v0, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/etao/kakalib/api/KakaLibMTopParserHelper$CustomAsyncDataListener;->requestCallback:Lcom/etao/kakalib/api/HttpRequstCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etao/kakalib/api/HttpRequstCallback;->onProgress(Ljava/lang/String;II)V

    .line 246
    :cond_0
    return-void
.end method
