.class Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
.super Ljava/lang/Object;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V
    .locals 0
    .parameter "h"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    .local p2, k:Ljava/lang/Object;,"TK;"
    .local p3, v:Ljava/lang/Object;,"TV;"
    .local p4, n:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 755
    iput-object p4, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 756
    iput-object p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    .line 757
    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    .line 758
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    const/4 v5, 0x0

    .line 775
    instance-of v6, p1, Ljava/util/Map$Entry;

    if-nez v6, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 777
    check-cast v0, Ljava/util/Map$Entry;

    .line 778
    .local v0, e:Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 779
    .local v1, k1:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 780
    .local v2, k2:Ljava/lang/Object;
    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 782
    .local v3, v1:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 783
    .local v4, v2:Ljava/lang/Object;
    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 784
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .line 790
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    .local p1, m:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    return-void
.end method

.method recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    .local p1, m:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    .local p1, newValue:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 770
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 771
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 795
    .local p0, this:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,"Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
