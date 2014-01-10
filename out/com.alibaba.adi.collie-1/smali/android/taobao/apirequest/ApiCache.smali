.class public Landroid/taobao/apirequest/ApiCache;
.super Ljava/lang/Object;
.source "ApiCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/ApiCache$1;,
        Landroid/taobao/apirequest/ApiCache$MetaData;,
        Landroid/taobao/apirequest/ApiCache$SingletonHolder;
    }
.end annotation


# static fields
.field public static final API_CACHE_POLICY_AskServerIfModifiedCachePolicy:I = 0x8

.field public static final API_CACHE_POLICY_AskServerIfModifiedWhenStaleCachePolicy:I = 0x4

.field public static final API_CACHE_POLICY_DoNotReadFromCacheCachePolicy:I = 0x1

.field public static final API_CACHE_POLICY_DoNotWriteToCacheCachePolicy:I = 0x2

.field public static final API_CACHE_POLICY_FallbackToCacheIfLoadFailsCachePolicy:I = 0x20

.field public static final API_CACHE_STORAGE_PERSIST:I = 0x1

.field public static final API_CACHE_STORAGE_SESSION:I = 0x2


# instance fields
.field final MAX_ITEM:I

.field private final m_cacheHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/apirequest/ApiCache$MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final m_cacheKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheKeyList:Ljava/util/ArrayList;

    .line 70
    const/16 v0, 0x14

    iput v0, p0, Landroid/taobao/apirequest/ApiCache;->MAX_ITEM:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/apirequest/ApiCache$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiCache;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/apirequest/ApiCache;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/taobao/apirequest/ApiCache$SingletonHolder;->access$100()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCache(I)Z
    .locals 2
    .parameter "policy"

    .prologue
    .line 199
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 201
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    monitor-exit v1

    .line 203
    const/4 v0, 0x1

    return v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteCacheData(Ljava/lang/String;I)Z
    .locals 4
    .parameter "key"
    .parameter "storagePolicy"

    .prologue
    .line 167
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete ApiCache successd! cacheKey = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v1

    .line 172
    const/4 v0, 0x1

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public getCacheData(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .parameter "cachePolicy"
    .parameter "storagePolicy"

    .prologue
    const/4 v1, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-object v1

    .line 107
    :cond_0
    const/4 v2, 0x1

    and-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_1

    .line 108
    const-string v2, "TaoSdk.ApiRequest"

    const-string v3, "do not read from cache"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v3, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiCache$MetaData;

    .line 114
    .local v0, o:Landroid/taobao/apirequest/ApiCache$MetaData;
    if-eqz v0, :cond_2

    iget-wide v3, v0, Landroid/taobao/apirequest/ApiCache$MetaData;->m_expirePoint:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 115
    iget-object v1, v0, Landroid/taobao/apirequest/ApiCache$MetaData;->m_doObject:Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    .line 117
    .end local v0           #o:Landroid/taobao/apirequest/ApiCache$MetaData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #o:Landroid/taobao/apirequest/ApiCache$MetaData;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasCacheData(Ljava/lang/String;I)Z
    .locals 2
    .parameter "key"
    .parameter "storagePolicy"

    .prologue
    .line 186
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public setCacheData(Ljava/lang/String;Ljava/lang/Object;III)V
    .locals 7
    .parameter "key"
    .parameter "doObject"
    .parameter "cachePolicy"
    .parameter "storagePolicy"
    .parameter "expireTime"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x2

    and-int/lit8 v2, p3, 0x2

    if-ne v1, v2, :cond_1

    .line 139
    const-string v1, "TaoSdk.ApiRequest"

    const-string v2, "do not write to cache"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Landroid/taobao/apirequest/ApiCache$MetaData;

    int-to-long v1, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v4, v1, v3

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/taobao/apirequest/ApiCache$MetaData;-><init>(Landroid/taobao/apirequest/ApiCache;Ljava/lang/Object;IJ)V

    .line 144
    .local v0, data:Landroid/taobao/apirequest/ApiCache$MetaData;
    iget-object v2, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 145
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add ApiCache successd! cacheKey = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v3, 0x14

    if-le v1, v3, :cond_2

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceed max cacheCount, delete ApiCache: cacheKey = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheKeyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 152
    .local v6, oldkey:Ljava/lang/String;
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCache;->m_cacheHash:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v6           #oldkey:Ljava/lang/String;
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
