.class public Lcom/etao/kakalib/api/MopPostConnector;
.super Ljava/lang/Object;
.source "MopPostConnector.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/taobao/apirequest/ConnectorHelper;"
    }
.end annotation


# instance fields
.field apiUrl:Ljava/lang/String;

.field beanClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field typeReference:Lcom/alibaba/fastjson/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/TypeReference;)V
    .locals 0
    .parameter "apiUrl"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/etao/kakalib/api/MopPostConnector;,"Lcom/etao/kakalib/api/MopPostConnector<TT;>;"
    .local p2, beanClazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, typeReference:Lcom/alibaba/fastjson/TypeReference;,"Lcom/alibaba/fastjson/TypeReference<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/etao/kakalib/api/MopPostConnector;->apiUrl:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/etao/kakalib/api/MopPostConnector;->beanClazz:Ljava/lang/Class;

    .line 18
    iput-object p3, p0, Lcom/etao/kakalib/api/MopPostConnector;->typeReference:Lcom/alibaba/fastjson/TypeReference;

    .line 19
    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    .local p0, this:Lcom/etao/kakalib/api/MopPostConnector;,"Lcom/etao/kakalib/api/MopPostConnector<TT;>;"
    iget-object v0, p0, Lcom/etao/kakalib/api/MopPostConnector;->apiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 8
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/etao/kakalib/api/MopPostConnector;,"Lcom/etao/kakalib/api/MopPostConnector<TT;>;"
    const/4 v4, 0x0

    .line 31
    .local v4, result:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 35
    .local v2, jsonText:Ljava/lang/String;
    new-instance v0, Landroid/taobao/apirequest/ApiResponse;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiResponse;-><init>()V

    .line 37
    .local v0, apiResponse:Landroid/taobao/apirequest/ApiResponse;
    invoke-virtual {v0, v2}, Landroid/taobao/apirequest/ApiResponse;->parseResult(Ljava/lang/String;)Landroid/taobao/apirequest/ApiResponse;

    .line 38
    iget-boolean v5, v0, Landroid/taobao/apirequest/ApiResponse;->success:Z

    if-eqz v5, :cond_2

    .line 39
    iget-object v5, v0, Landroid/taobao/apirequest/ApiResponse;->data:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, rawObjJson:Ljava/lang/String;
    iget-object v5, p0, Lcom/etao/kakalib/api/MopPostConnector;->beanClazz:Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 41
    iget-object v5, p0, Lcom/etao/kakalib/api/MopPostConnector;->beanClazz:Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    .end local v0           #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .end local v2           #jsonText:Ljava/lang/String;
    .end local v3           #rawObjJson:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    return-object v4

    .line 42
    .restart local v0       #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .restart local v2       #jsonText:Ljava/lang/String;
    .restart local v3       #rawObjJson:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/Object;,"TT;"
    :cond_1
    iget-object v5, p0, Lcom/etao/kakalib/api/MopPostConnector;->typeReference:Lcom/alibaba/fastjson/TypeReference;

    if-eqz v5, :cond_0

    .line 43
    iget-object v5, p0, Lcom/etao/kakalib/api/MopPostConnector;->typeReference:Lcom/alibaba/fastjson/TypeReference;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v3, v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    goto :goto_0

    .line 47
    .end local v3           #rawObjJson:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/etao/kakalib/api/KakaLibMTopRequestException;

    iget-object v6, v0, Landroid/taobao/apirequest/ApiResponse;->errCode:Ljava/lang/String;

    .line 48
    iget-object v7, v0, Landroid/taobao/apirequest/ApiResponse;->errInfo:Ljava/lang/String;

    .line 47
    invoke-direct {v5, v6, v7}, Lcom/etao/kakalib/api/KakaLibMTopRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #apiResponse:Landroid/taobao/apirequest/ApiResponse;
    .end local v2           #jsonText:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method
