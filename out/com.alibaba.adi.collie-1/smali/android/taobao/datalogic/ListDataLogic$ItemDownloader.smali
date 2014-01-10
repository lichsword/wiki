.class Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;
.super Ljava/lang/Object;
.source "ListDataLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/datalogic/ListDataLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemDownloader"
.end annotation


# instance fields
.field private firstData:Z

.field private loadNextPage:I

.field private taskToken:I

.field final synthetic this$0:Landroid/taobao/datalogic/ListDataLogic;


# direct methods
.method public constructor <init>(Landroid/taobao/datalogic/ListDataLogic;III)V
    .locals 6
    .parameter
    .parameter "token"
    .parameter "loadNext"
    .parameter "ct"

    .prologue
    .line 811
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;-><init>(Landroid/taobao/datalogic/ListDataLogic;IIIZ)V

    .line 812
    return-void
.end method

.method public constructor <init>(Landroid/taobao/datalogic/ListDataLogic;IIIZ)V
    .locals 1
    .parameter
    .parameter "token"
    .parameter "loadNext"
    .parameter "ct"
    .parameter "first"

    .prologue
    .line 804
    iput-object p1, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->firstData:Z

    .line 805
    iput p2, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->taskToken:I

    .line 806
    iput p3, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->loadNextPage:I

    .line 808
    iput-boolean p5, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->firstData:Z

    .line 809
    return-void
.end method

.method private _dealPageData(Landroid/taobao/common/dataobject/PageDataObject;Landroid/taobao/util/Parameter;)V
    .locals 13
    .parameter "pageData"
    .parameter "param"

    .prologue
    const/4 v12, 0x1

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, cachedPageData:Landroid/taobao/common/dataobject/PageDataObject;
    const/4 v8, 0x0

    .line 821
    .local v8, removedParam:Landroid/taobao/util/Parameter;
    iget-object v10, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    monitor-enter v10

    .line 823
    :try_start_0
    iget v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->taskToken:I

    iget-object v11, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->token:I
    invoke-static {v11}, Landroid/taobao/datalogic/ListDataLogic;->access$000(Landroid/taobao/datalogic/ListDataLogic;)I

    move-result v11

    if-ne v9, v11, :cond_2

    if-eqz p1, :cond_2

    iget-object v9, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    if-eqz v9, :cond_2

    .line 824
    const-string v9, "ListDataLogic"

    const-string v11, "ItemDownloader getData success"

    invoke-static {v9, v11}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    array-length v9, v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 827
    .local v3, filterNullData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/common/dataobject/ItemDataObject;>;"
    iget-object v1, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    .local v1, arr$:[Landroid/taobao/common/dataobject/ItemDataObject;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v5, v1, v4

    .line 828
    .local v5, item:Landroid/taobao/common/dataobject/ItemDataObject;
    if-eqz v5, :cond_0

    .line 829
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 834
    .end local v5           #item:Landroid/taobao/common/dataobject/ItemDataObject;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/taobao/common/dataobject/ItemDataObject;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/taobao/common/dataobject/ItemDataObject;

    iput-object v9, p1, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    .line 835
    const/4 v9, 0x0

    iput v9, p1, Landroid/taobao/common/dataobject/PageDataObject;->dealedTime:I

    .line 839
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/taobao/datalogic/ListDataLogic;->access$100(Landroid/taobao/datalogic/ListDataLogic;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v11, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->pageCapacity:I
    invoke-static {v11}, Landroid/taobao/datalogic/ListDataLogic;->access$200(Landroid/taobao/datalogic/ListDataLogic;)I

    move-result v11

    if-lt v9, v11, :cond_2

    .line 840
    const-string v9, "ListDataLogic"

    const-string v11, "ItemDownloader need to cache"

    invoke-static {v9, v11}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->loadNextPage:I

    if-nez v9, :cond_4

    .line 842
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/taobao/datalogic/ListDataLogic;->access$100(Landroid/taobao/datalogic/ListDataLogic;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/taobao/common/dataobject/PageDataObject;

    move-object v2, v0

    .line 843
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;
    invoke-static {v9}, Landroid/taobao/datalogic/ListDataLogic;->access$300(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/datalogic/ParameterBuilder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/taobao/datalogic/ParameterBuilder;->getFstPageParam()Landroid/taobao/util/Parameter;

    move-result-object v8

    .line 852
    .end local v1           #arr$:[Landroid/taobao/common/dataobject/ItemDataObject;
    .end local v3           #filterNullData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/common/dataobject/ItemDataObject;>;"
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_2
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 857
    .local v7, msg:Landroid/os/Message;
    iput v12, v7, Landroid/os/Message;->what:I

    .line 858
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 859
    iget v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->taskToken:I

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 860
    iget v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->loadNextPage:I

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 861
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->mainThreadHandler:Landroid/taobao/util/SafeHandler;
    invoke-static {v9}, Landroid/taobao/datalogic/ListDataLogic;->access$400(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/util/SafeHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/taobao/util/SafeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 865
    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    iget-boolean v9, v2, Landroid/taobao/common/dataobject/PageDataObject;->isCached:Z

    if-nez v9, :cond_3

    .line 867
    iput-boolean v12, v2, Landroid/taobao/common/dataobject/PageDataObject;->isCached:Z

    .line 868
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    iget-object v9, v9, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v9, v8, v2}, Landroid/taobao/datalogic/DataSource;->putCacheData(Landroid/taobao/util/Parameter;Ljava/lang/Object;)Z

    .line 872
    :cond_3
    return-void

    .line 846
    .end local v7           #msg:Landroid/os/Message;
    .restart local v1       #arr$:[Landroid/taobao/common/dataobject/ItemDataObject;
    .restart local v3       #filterNullData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/common/dataobject/ItemDataObject;>;"
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    :try_start_1
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/taobao/datalogic/ListDataLogic;->access$100(Landroid/taobao/datalogic/ListDataLogic;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v11, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->pageDataList:Ljava/util/ArrayList;
    invoke-static {v11}, Landroid/taobao/datalogic/ListDataLogic;->access$100(Landroid/taobao/datalogic/ListDataLogic;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/taobao/common/dataobject/PageDataObject;

    move-object v2, v0

    .line 847
    iget-object v9, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;
    invoke-static {v9}, Landroid/taobao/datalogic/ListDataLogic;->access$300(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/datalogic/ParameterBuilder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/taobao/datalogic/ParameterBuilder;->getLstPageParam()Landroid/taobao/util/Parameter;

    move-result-object v8

    goto :goto_1

    .line 852
    .end local v1           #arr$:[Landroid/taobao/common/dataobject/ItemDataObject;
    .end local v3           #filterNullData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/common/dataobject/ItemDataObject;>;"
    .end local v4           #i$:I
    .end local v6           #len$:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 875
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 876
    const/4 v5, 0x0

    .line 877
    .local v5, param:Landroid/taobao/util/Parameter;
    const/4 v4, 0x0

    .line 880
    .local v4, pageData:Landroid/taobao/common/dataobject/PageDataObject;
    iget v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->loadNextPage:I

    if-nez v6, :cond_3

    .line 882
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;
    invoke-static {v6}, Landroid/taobao/datalogic/ListDataLogic;->access$300(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/datalogic/ParameterBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/datalogic/ParameterBuilder;->getNxtPageParam()Landroid/taobao/util/Parameter;

    move-result-object v5

    .line 893
    :goto_0
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    iget-object v6, v6, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v6}, Landroid/taobao/datalogic/DataSource;->getCachePolicyFlag()I

    move-result v1

    .line 894
    .local v1, cachePolicyFlag:I
    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->firstData:Z

    if-eqz v6, :cond_5

    move v2, v7

    .line 896
    .local v2, dealFirstCache:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 901
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ListDataLogic"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->cacheKey:Ljava/lang/String;
    invoke-static {v8}, Landroid/taobao/datalogic/ListDataLogic;->access$500(Landroid/taobao/datalogic/ListDataLogic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/taobao/cache/Cache;->getPersistedCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/taobao/common/dataobject/PageDataObject;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_2
    if-eqz v4, :cond_0

    .line 910
    invoke-direct {p0, v4, v5}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->_dealPageData(Landroid/taobao/common/dataobject/PageDataObject;Landroid/taobao/util/Parameter;)V

    .line 915
    :cond_0
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    iget-object v6, v6, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v6, v5}, Landroid/taobao/datalogic/DataSource;->getData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pageData:Landroid/taobao/common/dataobject/PageDataObject;
    check-cast v4, Landroid/taobao/common/dataobject/PageDataObject;

    .line 916
    .restart local v4       #pageData:Landroid/taobao/common/dataobject/PageDataObject;
    if-eqz v4, :cond_1

    .line 917
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    iget-object v8, v4, Landroid/taobao/common/dataobject/PageDataObject;->result:Landroid/taobao/apirequest/ApiResult;

    #setter for: Landroid/taobao/datalogic/ListDataLogic;->mResult:Landroid/taobao/apirequest/ApiResult;
    invoke-static {v6, v8}, Landroid/taobao/datalogic/ListDataLogic;->access$602(Landroid/taobao/datalogic/ListDataLogic;Landroid/taobao/apirequest/ApiResult;)Landroid/taobao/apirequest/ApiResult;

    .line 918
    :cond_1
    invoke-direct {p0, v4, v5}, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->_dealPageData(Landroid/taobao/common/dataobject/PageDataObject;Landroid/taobao/util/Parameter;)V

    .line 922
    if-eqz v2, :cond_2

    .line 925
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    iget-object v6, v6, Landroid/taobao/datalogic/ListDataLogic;->source:Landroid/taobao/datalogic/DataSource;

    invoke-interface {v6, v5}, Landroid/taobao/datalogic/DataSource;->getData(Landroid/taobao/util/Parameter;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pageData:Landroid/taobao/common/dataobject/PageDataObject;
    check-cast v4, Landroid/taobao/common/dataobject/PageDataObject;

    .line 926
    .restart local v4       #pageData:Landroid/taobao/common/dataobject/PageDataObject;
    if-eqz v4, :cond_2

    const-string v6, "SUCCESS"

    iget-object v8, v4, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 929
    iput-boolean v7, v4, Landroid/taobao/common/dataobject/PageDataObject;->isCached:Z

    .line 930
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ListDataLogic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->cacheKey:Ljava/lang/String;
    invoke-static {v7}, Landroid/taobao/datalogic/ListDataLogic;->access$500(Landroid/taobao/datalogic/ListDataLogic;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/taobao/cache/Cache;->putPersistedCache(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 935
    :cond_2
    return-void

    .line 884
    .end local v1           #cachePolicyFlag:I
    .end local v2           #dealFirstCache:Z
    :cond_3
    iget v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->loadNextPage:I

    if-ne v6, v7, :cond_4

    .line 886
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;
    invoke-static {v6}, Landroid/taobao/datalogic/ListDataLogic;->access$300(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/datalogic/ParameterBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/datalogic/ParameterBuilder;->getPrePageParam()Landroid/taobao/util/Parameter;

    move-result-object v5

    goto/16 :goto_0

    .line 889
    :cond_4
    iget-object v6, p0, Landroid/taobao/datalogic/ListDataLogic$ItemDownloader;->this$0:Landroid/taobao/datalogic/ListDataLogic;

    #getter for: Landroid/taobao/datalogic/ListDataLogic;->paramBuilder:Landroid/taobao/datalogic/ParameterBuilder;
    invoke-static {v6}, Landroid/taobao/datalogic/ListDataLogic;->access$300(Landroid/taobao/datalogic/ListDataLogic;)Landroid/taobao/datalogic/ParameterBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/datalogic/ParameterBuilder;->getOriginPageParam()Landroid/taobao/util/Parameter;

    move-result-object v5

    goto/16 :goto_0

    .line 894
    .restart local v1       #cachePolicyFlag:I
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 903
    .restart local v2       #dealFirstCache:Z
    :catch_0
    move-exception v3

    .line 905
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method
