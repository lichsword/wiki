.class Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;
.super Landroid/os/Handler;
.source "JokeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

.field private final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->val$dataList:Ljava/util/List;

    .line 261
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 266
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 268
    .local v10, refreshSize:I
    const/16 v11, 0xf

    if-ge v10, v11, :cond_0

    .line 272
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$1(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    .local v7, jsonObject:Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 279
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 285
    .local v2, dataArray:Lorg/json/JSONArray;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->getData()Ljava/util/List;

    move-result-object v9

    .line 286
    .local v9, previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    rsub-int/lit8 v8, v11, 0xf

    .line 287
    .local v8, needCount:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_2

    .line 289
    :goto_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-lt v5, v8, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$0(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Ljava/lang/String;)V

    .line 298
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #needCount:I
    .end local v9           #previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    :cond_0
    if-nez v10, :cond_5

    .line 299
    const-string v4, ""

    .line 300
    .local v4, hint:Ljava/lang/String;
    sget-object v11, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v11}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0a015e

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    :goto_4
    new-instance v13, Lcom/alibaba/adi/collie/ui/view/TipsBox;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 306
    const v14, 0x7f080049

    .line 305
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-direct {v13, v11, v4}, Lcom/alibaba/adi/collie/ui/view/TipsBox;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 266
    .end local v4           #hint:Ljava/lang/String;
    :goto_5
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    .end local v10           #refreshSize:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->onRefreshComplete()V

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    const/4 v12, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->isRunning:Z
    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;Z)V

    .line 323
    const-string v11, "JokeUpdate"

    invoke-static {v11}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 324
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 325
    sget-object v11, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    const-string v12, "xhh refresh task end"

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 273
    .restart local v10       #refreshSize:I
    :catch_0
    move-exception v3

    .line 274
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v11, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "xhh get joke failed "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v14

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$1(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 281
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 282
    .restart local v2       #dataArray:Lorg/json/JSONArray;
    const-string v11, "data"

    invoke-virtual {v7, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 266
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

    .line 318
    :catch_1
    move-exception v3

    .line 319
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 288
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #dataArray:Lorg/json/JSONArray;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    .restart local v8       #needCount:I
    .restart local v9       #previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .restart local v10       #refreshSize:I
    :cond_2
    :try_start_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    goto/16 :goto_2

    .line 290
    .restart local v5       #i:I
    :cond_3
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;

    .line 291
    .local v6, j:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #calls: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->getCategoryJsonObject(Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;)Lorg/json/JSONObject;
    invoke-static {v11, v6}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$2(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;)Lorg/json/JSONObject;

    move-result-object v1

    .line 293
    .local v1, categoryObj:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 303
    .end local v1           #categoryObj:Lorg/json/JSONObject;
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v6           #j:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #needCount:I
    .end local v9           #previousDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .restart local v4       #hint:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0a015d

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 307
    .end local v4           #hint:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 308
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setFooterVisisablity(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->val$dataList:Ljava/util/List;

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->setData(Ljava/util/List;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v11

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setHeaderVisiability(I)V

    .line 311
    new-instance v13, Lcom/alibaba/adi/collie/ui/view/TipsBox;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 312
    const v14, 0x7f080049

    .line 311
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v14}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a015b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 312
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 311
    invoke-direct {v13, v11, v14}, Lcom/alibaba/adi/collie/ui/view/TipsBox;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 315
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;->this$2:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v11

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v11

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setFooterVisisablity(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method
