.class public Landroid/taobao/apirequest/ApiCacheGroup;
.super Ljava/util/ArrayList;
.source "ApiCacheGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x60bc5eea3246119aL


# instance fields
.field private groupKey:Ljava/lang/String;

.field private subGroupHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/apirequest/ApiCacheGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "groupKey"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private initIfNeeded()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    .line 26
    :cond_0
    return-void
.end method

.method private invalidAllCache(Ljava/lang/String;)V
    .locals 8
    .parameter "parentGroupKey"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "./"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    :goto_0
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiCacheGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalidatingApiCache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  cacheKey = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/taobao/apirequest/ApiCache;->deleteCacheData(Ljava/lang/String;I)Z

    goto :goto_1

    .line 130
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 138
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiCacheGroup;->clear()V

    .line 140
    iget-object v5, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 153
    :cond_2
    return-void

    .line 143
    :cond_3
    iget-object v5, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 144
    .local v2, groupKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, gk:Ljava/lang/String;
    iget-object v5, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/apirequest/ApiCacheGroup;

    .line 146
    .local v1, group:Landroid/taobao/apirequest/ApiCacheGroup;
    if-eqz v1, :cond_4

    .line 147
    invoke-direct {v1, p1}, Landroid/taobao/apirequest/ApiCacheGroup;->invalidAllCache(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private printMemoryStorageStructure(Ljava/lang/String;)V
    .locals 8
    .parameter "parentGroupKey"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "./"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroid/taobao/apirequest/ApiCacheGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  cacheKey = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 175
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 185
    :cond_2
    return-void

    .line 178
    :cond_3
    iget-object v5, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 179
    .local v2, groupKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, gk:Ljava/lang/String;
    iget-object v5, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/apirequest/ApiCacheGroup;

    .line 181
    .local v1, group:Landroid/taobao/apirequest/ApiCacheGroup;
    if-eqz v1, :cond_4

    .line 182
    invoke-direct {v1, p1}, Landroid/taobao/apirequest/ApiCacheGroup;->printMemoryStorageStructure(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public addApiCache(Ljava/lang/String;)V
    .locals 1
    .parameter "cacheKey"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/ApiCacheGroup;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/ApiCacheGroup;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public addApiCacheGroup(Landroid/taobao/apirequest/ApiCacheGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiCacheGroup;->initIfNeeded()V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/taobao/apirequest/ApiCacheGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-void
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSubGroup(Ljava/lang/String;)Landroid/taobao/apirequest/ApiCacheGroup;
    .locals 1
    .parameter "groupKey"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/taobao/apirequest/ApiCacheGroup;->initIfNeeded()V

    .line 90
    iget-object v0, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiCacheGroup;

    return-object v0
.end method

.method public invalidAllCache()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/taobao/apirequest/ApiCacheGroup;->invalidAllCache(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public invalidCache(Ljava/lang/String;)V
    .locals 3
    .parameter "cacheKey"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/ApiCacheGroup;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Landroid/taobao/apirequest/ApiCacheGroup;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidatingApiCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/apirequest/ApiCacheGroup;->groupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  cacheKey = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Landroid/taobao/apirequest/ApiCache;->getInstance()Landroid/taobao/apirequest/ApiCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/taobao/apirequest/ApiCache;->deleteCacheData(Ljava/lang/String;I)Z

    .line 71
    :cond_0
    return-void
.end method

.method public invalidCacheGroup(Ljava/lang/String;)V
    .locals 2
    .parameter "groupKey"

    .prologue
    .line 110
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Landroid/taobao/apirequest/ApiCacheGroup;->subGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiCacheGroup;

    .line 114
    .local v0, group:Landroid/taobao/apirequest/ApiCacheGroup;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiCacheGroup;->invalidAllCache()V

    goto :goto_0
.end method

.method public printMemoryStorageStructure()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start print ApiCacheGroup Structure:"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/taobao/apirequest/ApiCacheGroup;->printMemoryStorageStructure(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished print ApiCacheGroup Structure"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
