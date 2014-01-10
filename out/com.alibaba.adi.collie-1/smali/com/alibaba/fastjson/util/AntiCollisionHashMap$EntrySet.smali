.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1021
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1043
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->clear()V

    .line 1044
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 1027
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 1029
    check-cast v1, Ljava/util/Map$Entry;

    .line 1030
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    .line 1031
    .local v0, candidate:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1035
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1039
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method
