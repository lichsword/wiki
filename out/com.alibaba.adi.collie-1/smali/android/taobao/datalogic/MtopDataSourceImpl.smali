.class public Landroid/taobao/datalogic/MtopDataSourceImpl;
.super Ljava/lang/Object;
.source "MtopDataSourceImpl.java"

# interfaces
.implements Landroid/taobao/datalogic/DataSource;


# static fields
.field static tempKeyIndex:I


# instance fields
.field private apiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

.field private apiProxy:Landroid/taobao/apirequest/ApiProperty;

.field protected helper:Landroid/taobao/apirequest/MTOPListConnectorHelper;

.field private mApiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

.field private mTempKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Landroid/taobao/datalogic/MtopDataSourceImpl;->tempKeyIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/taobao/apirequest/MTOPListConnectorHelper;Landroid/app/Application;Landroid/taobao/apirequest/ApiCacheGroup;Landroid/taobao/apirequest/ApiProperty;)V
    .locals 2
    .parameter "helper"
    .parameter "context"
    .parameter "apiCacheGroup"
    .parameter "apiProxy"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->helper:Landroid/taobao/apirequest/MTOPListConnectorHelper;

    .line 45
    invoke-static {p2}, Landroid/taobao/cache/Cache;->init(Landroid/app/Application;)V

    .line 46
    iput-object p3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    .line 47
    iput-object p4, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiProxy:Landroid/taobao/apirequest/ApiProperty;

    .line 48
    new-instance v0, Landroid/taobao/apirequest/ApiCacheGroup;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/ApiCacheGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->mApiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    .line 49
    sget v0, Landroid/taobao/datalogic/MtopDataSourceImpl;->tempKeyIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/taobao/datalogic/MtopDataSourceImpl;->tempKeyIndex:I

    iput v0, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->mTempKeyIndex:I

    .line 50
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->mApiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiCacheGroup;->invalidAllCache()V

    .line 104
    return-void
.end method

.method public getCacheData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
    .locals 1
    .parameter "param"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/taobao/datalogic/MtopDataSourceImpl;->getRemoteData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getCachePolicyFlag()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheType()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, -0x1

    return v0
.end method

.method public getData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
    .locals 1
    .parameter "param"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/taobao/datalogic/MtopDataSourceImpl;->getRemoteData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;
    .locals 5
    .parameter "param"

    .prologue
    .line 58
    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->helper:Landroid/taobao/apirequest/MTOPListConnectorHelper;

    invoke-virtual {v3, p1}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->setParam(Landroid/taobao/util/Parameter;)V

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, key:Ljava/lang/String;
    new-instance v0, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 62
    .local v0, defaultApiProperty:Landroid/taobao/apirequest/ApiProperty;
    if-eqz p1, :cond_0

    .line 63
    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiProxy:Landroid/taobao/apirequest/ApiProperty;

    if-eqz v3, :cond_2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiProxy:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v4}, Landroid/taobao/apirequest/ApiProperty;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " page:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/taobao/util/Parameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiProperty;->setCacheKey(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiProxy:Landroid/taobao/apirequest/ApiProperty;

    invoke-virtual {v3}, Landroid/taobao/apirequest/ApiProperty;->getCachePolicy()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/taobao/apirequest/ApiProperty;->setCachePolicy(I)V

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->helper:Landroid/taobao/apirequest/MTOPListConnectorHelper;

    invoke-virtual {v3, v4, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/MTOPListConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/taobao/common/dataobject/PageDataObject;

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_1

    .line 83
    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiProxy:Landroid/taobao/apirequest/ApiProperty;

    if-eqz v3, :cond_3

    .line 84
    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->apiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    invoke-virtual {v3, v1}, Landroid/taobao/apirequest/ApiCacheGroup;->addApiCache(Ljava/lang/String;)V

    .line 91
    :cond_1
    :goto_1
    return-object v2

    .line 73
    .end local v2           #obj:Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listTempKey:index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->mTempKeyIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " page:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/taobao/util/Parameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiProperty;->setCacheKey(Ljava/lang/String;)V

    .line 75
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/taobao/apirequest/ApiProperty;->setCachePolicy(I)V

    goto :goto_0

    .line 87
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Landroid/taobao/datalogic/MtopDataSourceImpl;->mApiCacheGroup:Landroid/taobao/apirequest/ApiCacheGroup;

    invoke-virtual {v3, v1}, Landroid/taobao/apirequest/ApiCacheGroup;->addApiCache(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public putCacheData(Landroid/taobao/util/Parameter;Ljava/lang/Object;)Z
    .locals 1
    .parameter "param"
    .parameter "data"

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public setCachePolicyFlag(I)V
    .locals 0
    .parameter "policyFlag"

    .prologue
    .line 150
    return-void
.end method
