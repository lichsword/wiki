.class public interface abstract Landroid/taobao/datalogic/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# static fields
.field public static final CACHE_POLICY_CacheFirstData:I = 0x40


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract getCacheData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
.end method

.method public abstract getCachePolicyFlag()I
.end method

.method public abstract getCacheType()I
.end method

.method public abstract getData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
.end method

.method public abstract putCacheData(Landroid/taobao/util/Parameter;Ljava/lang/Object;)Z
.end method

.method public abstract setCachePolicyFlag(I)V
.end method
