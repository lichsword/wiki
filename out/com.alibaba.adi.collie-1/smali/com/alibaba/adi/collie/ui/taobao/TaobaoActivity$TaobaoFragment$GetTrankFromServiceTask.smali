.class Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;
.super Landroid/os/AsyncTask;
.source "TaobaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTrankFromServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isRunning:Z

.field startTime:J

.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->isRunning:Z

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->isRunning:Z

    return v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 409
    sget-object v1, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh refresh task begin"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->isRunning:Z

    .line 411
    new-instance v0, Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 412
    const/4 v3, 0x0

    .line 411
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/service/task/AppGetTask;-><init>(Landroid/content/Context;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;)V

    .line 413
    .local v0, getTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/service/task/AppGetTask;->runDirectly(Z)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$6(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$7(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromJsonStr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    const v9, 0x7f0a00c7

    const/4 v10, 0x0

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, isRefreshTooMuch:Z
    if-nez p1, :cond_0

    .line 424
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$7(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    const-string v7, "status"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, status:Ljava/lang/String;
    const-string v7, "310"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 428
    const/4 v1, 0x1

    .line 435
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 436
    sget-object v7, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v8, "refresh too much"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->showTips(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$8(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V

    .line 455
    :goto_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$1(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->onRefreshComplete()V

    .line 456
    iput-boolean v10, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->isRunning:Z

    .line 457
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #calls: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->setTaoTrackingView(Ljava/util/List;)V
    invoke-static {v7, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$3(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/util/List;)V

    .line 441
    const-string v7, "tb_tracking_data"

    invoke-static {v7}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 440
    invoke-static {v7, v10}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromJsonStr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 442
    .local v5, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    move-object v3, p1

    .line 443
    .local v3, newList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    invoke-static {v5, v3}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->calcTaoTrackingListDiff(Ljava/util/List;Ljava/util/List;)I

    move-result v4

    .line 444
    .local v4, notifyCount:I
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_2

    if-lez v4, :cond_3

    .line 445
    :cond_2
    const-string v8, "tb_tracking_data"

    .line 446
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$7(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, ""

    .line 445
    :goto_2
    invoke-static {v8, v7}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_3
    if-lez v4, :cond_5

    .line 450
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    const v9, 0x7f0a00c6

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->showTips(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$8(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_4
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mValue:Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$7(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 452
    :cond_5
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->showTips(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$8(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->startTime:J

    .line 404
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 405
    return-void
.end method
