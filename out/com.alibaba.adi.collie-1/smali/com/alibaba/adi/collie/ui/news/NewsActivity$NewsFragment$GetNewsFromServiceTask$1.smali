.class Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;
.super Landroid/os/Handler;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

.field private final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->val$dataList:Ljava/util/List;

    .line 253
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 260
    .local v10, refreshSize:I
    const/16 v11, 0xa

    if-ge v10, v11, :cond_0

    .line 264
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$1(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    .local v7, jsonObject:Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 271
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 277
    .local v2, dataArray:Lorg/json/JSONArray;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->getData()Ljava/util/List;

    move-result-object v9

    .line 278
    .local v9, previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    rsub-int/lit8 v8, v11, 0xa

    .line 279
    .local v8, needCount:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_2

    .line 281
    :goto_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-lt v5, v8, :cond_3

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$0(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)V

    .line 290
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #needCount:I
    .end local v9           #previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    :cond_0
    if-nez v10, :cond_5

    .line 291
    const-string v4, ""

    .line 292
    .local v4, hint:Ljava/lang/String;
    sget-object v11, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v11}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0a015e

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    :goto_4
    new-instance v13, Lcom/alibaba/adi/collie/ui/view/TipsBox;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 298
    const v14, 0x7f08004a

    .line 297
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-direct {v13, v11, v4}, Lcom/alibaba/adi/collie/ui/view/TipsBox;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 258
    .end local v4           #hint:Ljava/lang/String;
    :goto_5
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    .end local v10           #refreshSize:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->onRefreshComplete()V

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    const/4 v12, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->isRunning:Z
    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;Z)V

    .line 317
    const-string v11, "NewsUpdate"

    invoke-static {v11}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 318
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 320
    return-void

    .line 265
    .restart local v10       #refreshSize:I
    :catch_0
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v11, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "xhh get news failed "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v14

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$1(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 273
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 274
    .restart local v2       #dataArray:Lorg/json/JSONArray;
    const-string v11, "data"

    invoke-virtual {v7, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 258
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #refreshSize:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 312
    :catch_1
    move-exception v3

    .line 313
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 280
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #dataArray:Lorg/json/JSONArray;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    .restart local v8       #needCount:I
    .restart local v9       #previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .restart local v10       #refreshSize:I
    :cond_2
    :try_start_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    goto/16 :goto_2

    .line 282
    .restart local v5       #i:I
    :cond_3
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/model/service/NewsData;

    .line 283
    .local v6, j:Lcom/alibaba/adi/collie/model/service/NewsData;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #calls: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->getCategoryObject(Lcom/alibaba/adi/collie/model/service/NewsData;)Lorg/json/JSONObject;
    invoke-static {v11, v6}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$2(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;Lcom/alibaba/adi/collie/model/service/NewsData;)Lorg/json/JSONObject;

    move-result-object v1

    .line 285
    .local v1, categoryObj:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 295
    .end local v1           #categoryObj:Lorg/json/JSONObject;
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v6           #j:Lcom/alibaba/adi/collie/model/service/NewsData;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #needCount:I
    .end local v9           #previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .restart local v4       #hint:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0a015d

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 299
    .end local v4           #hint:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setFooterVisibility(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->clearData()V

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->addData(Ljava/util/List;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v11

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setHeaderVisiability(I)V

    .line 304
    new-instance v13, Lcom/alibaba/adi/collie/ui/view/TipsBox;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 305
    const v14, 0x7f08004a

    .line 304
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a015c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 305
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 304
    invoke-direct {v13, v11, v14}, Lcom/alibaba/adi/collie/ui/view/TipsBox;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 309
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v11

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setFooterVisibility(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method
