.class public Landroid/taobao/datalogic/DataSourceImpl;
.super Ljava/lang/Object;
.source "DataSourceImpl.java"

# interfaces
.implements Landroid/taobao/datalogic/DataSource;


# static fields
.field public static final PERSISTED_CACHE:I = 0x1

.field public static final TMP_CACHE:I


# instance fields
.field private cachePolicyFlag:I

.field private cacheType:I

.field private cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected helper:Landroid/taobao/common/i/DLConnectorHelper;


# direct methods
.method public constructor <init>(Landroid/taobao/common/i/DLConnectorHelper;ILandroid/app/Application;Ljava/lang/Class;)V
    .locals 1
    .parameter "helper"
    .parameter "cacheType"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/common/i/DLConnectorHelper;",
            "I",
            "Landroid/app/Application;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p4, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/taobao/datalogic/DataSourceImpl;->helper:Landroid/taobao/common/i/DLConnectorHelper;

    .line 41
    iput p2, p0, Landroid/taobao/datalogic/DataSourceImpl;->cacheType:I

    .line 42
    iput-object p4, p0, Landroid/taobao/datalogic/DataSourceImpl;->dataClass:Ljava/lang/Class;

    .line 43
    invoke-static {p3}, Landroid/taobao/cache/Cache;->init(Landroid/app/Application;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 54
    .local v1, size:I
    iget v2, p0, Landroid/taobao/datalogic/DataSourceImpl;->cacheType:I

    if-nez v2, :cond_0

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/taobao/cache/Cache;->deleteTmpCache(Ljava/lang/String;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 66
    return-void
.end method

.method public getCacheData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
    .locals 4
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-object v2

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/util/Parameter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, key:Ljava/lang/String;
    :try_start_0
    iget v3, p0, Landroid/taobao/datalogic/DataSourceImpl;->cacheType:I

    if-nez v3, :cond_1

    .line 103
    iget-object v3, p0, Landroid/taobao/datalogic/DataSourceImpl;->dataClass:Ljava/lang/Class;

    invoke-static {v1, v3}, Landroid/taobao/cache/Cache;->getTmpObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 105
    :cond_1
    iget-object v3, p0, Landroid/taobao/datalogic/DataSourceImpl;->dataClass:Ljava/lang/Class;

    invoke-static {v1, v3}, Landroid/taobao/cache/Cache;->getPersistedObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCachePolicyFlag()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachePolicyFlag:I

    return v0
.end method

.method public getCacheType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Landroid/taobao/datalogic/DataSourceImpl;->cacheType:I

    return v0
.end method

.method public getData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
    .locals 1
    .parameter "param"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 84
    .local v0, data:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/taobao/datalogic/DataSourceImpl;->getCacheData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Landroid/taobao/datalogic/DataSourceImpl;->getRemoteData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .end local v0           #data:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method protected getRemoteData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
    .locals 4
    .parameter "param"

    .prologue
    .line 115
    iget-object v1, p0, Landroid/taobao/datalogic/DataSourceImpl;->helper:Landroid/taobao/common/i/DLConnectorHelper;

    invoke-interface {v1, p1}, Landroid/taobao/common/i/DLConnectorHelper;->setParam(Landroid/taobao/util/Parameter;)V

    .line 116
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/datalogic/DataSourceImpl;->helper:Landroid/taobao/common/i/DLConnectorHelper;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, res:Ljava/lang/Object;
    return-object v0
.end method

.method public putCacheData(Landroid/taobao/util/Parameter;Ljava/lang/Object;)Z
    .locals 2
    .parameter "param"
    .parameter "data"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/taobao/util/Parameter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, paramString:Ljava/lang/String;
    iget-object v1, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachedData:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/DataSourceImpl;->cacheType:I

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Landroid/taobao/datalogic/DataSourceImpl;->dataClass:Ljava/lang/Class;

    invoke-static {v0, p2, v1}, Landroid/taobao/cache/Cache;->putTmpCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    .line 132
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/taobao/datalogic/DataSourceImpl;->dataClass:Ljava/lang/Class;

    invoke-static {v0, p2, v1}, Landroid/taobao/cache/Cache;->putPersistedCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method

.method public setCachePolicyFlag(I)V
    .locals 0
    .parameter "policyFlag"

    .prologue
    .line 149
    iput p1, p0, Landroid/taobao/datalogic/DataSourceImpl;->cachePolicyFlag:I

    .line 150
    return-void
.end method

.method public setConnectHelper(Landroid/taobao/common/i/DLConnectorHelper;)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 137
    iput-object p1, p0, Landroid/taobao/datalogic/DataSourceImpl;->helper:Landroid/taobao/common/i/DLConnectorHelper;

    .line 138
    return-void
.end method
