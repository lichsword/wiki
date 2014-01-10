.class Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;
.super Ljava/lang/Object;
.source "ApiRequestQueue.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApiExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/taobao/apirequest/ApiResult;",
        ">;"
    }
.end annotation


# instance fields
.field mApiConn:Landroid/taobao/apirequest/ApiConnector;

.field mProperty:Landroid/taobao/apirequest/ApiProperty;

.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestQueue;


# direct methods
.method public constructor <init>(Landroid/taobao/apirequest/ApiRequestQueue;Landroid/taobao/apirequest/ApiConnector;Landroid/taobao/apirequest/ApiProperty;)V
    .locals 0
    .parameter
    .parameter "connector"
    .parameter "property"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->this$0:Landroid/taobao/apirequest/ApiRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mApiConn:Landroid/taobao/apirequest/ApiConnector;

    .line 62
    iput-object p3, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    .line 63
    return-void
.end method


# virtual methods
.method public call()Landroid/taobao/apirequest/ApiResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v4}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v4

    iget-object v5, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v5}, Landroid/taobao/apirequest/ApiProperty;->getCacheStoragePolicy()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/taobao/apirequest/ApiCache;->getCacheData(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, cacheData:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/taobao/apirequest/ApiResult;

    if-ne v2, v3, :cond_0

    .line 75
    const-string v2, "ApiCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get ApiCache successd! cacheKey = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mProperty:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v4}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mApiConn:Landroid/taobao/apirequest/ApiConnector;

    move-object v2, v0

    check-cast v2, Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v3, v2}, Landroid/taobao/apirequest/ApiConnector;->notifyDataArrive(Landroid/taobao/apirequest/ApiResult;)V

    .line 77
    check-cast v0, Landroid/taobao/apirequest/ApiResult;

    .line 82
    .end local v0           #cacheData:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 80
    .restart local v0       #cacheData:Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mApiConn:Landroid/taobao/apirequest/ApiConnector;

    invoke-virtual {v2}, Landroid/taobao/apirequest/ApiConnector;->syncConnect()Landroid/taobao/apirequest/ApiResult;

    move-result-object v1

    .line 81
    .local v1, res:Landroid/taobao/apirequest/ApiResult;
    iget-object v2, p0, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->mApiConn:Landroid/taobao/apirequest/ApiConnector;

    invoke-virtual {v2, v1}, Landroid/taobao/apirequest/ApiConnector;->notifyDataArrive(Landroid/taobao/apirequest/ApiResult;)V

    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiRequestQueue$ApiExecutor;->call()Landroid/taobao/apirequest/ApiResult;

    move-result-object v0

    return-object v0
.end method
