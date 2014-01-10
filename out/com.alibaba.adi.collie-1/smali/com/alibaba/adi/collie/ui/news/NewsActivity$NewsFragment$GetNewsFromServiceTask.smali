.class Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;
.super Landroid/os/AsyncTask;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNewsFromServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/adi/collie/model/service/NewsData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isRunning:Z

.field private final startTime:J

.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->isRunning:Z

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;Lcom/alibaba/adi/collie/model/service/NewsData;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->getCategoryObject(Lcom/alibaba/adi/collie/model/service/NewsData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->isRunning:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->isRunning:Z

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    return-object v0
.end method

.method private getCategoryObject(Lcom/alibaba/adi/collie/model/service/NewsData;)Lorg/json/JSONObject;
    .locals 5
    .parameter "j"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v1, categoryObj:Lorg/json/JSONObject;
    const-string v3, "category"

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 331
    .local v0, categoryDataList:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/NewsData;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, item:Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 333
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    return-object v1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    const/4 v2, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$0(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh refresh task begin"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->isRunning:Z

    .line 243
    new-instance v0, Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 244
    const-string v3, "news_data"

    .line 243
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/service/task/AppGetTask;-><init>(Landroid/content/Context;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;)V

    .line 245
    .local v0, getTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/service/task/AppGetTask;->runDirectly(Z)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$0(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mNewsValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$1(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->formatNewsList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$2(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    const-wide/16 v0, 0x1f4

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    sub-long v2, v5, v7

    .line 252
    .local v2, diff:J
    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    .line 253
    .local v0, delay:J
    :goto_0
    new-instance v4, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask$1;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;Ljava/util/List;)V

    .line 322
    .local v4, handler:Landroid/os/Handler;
    if-eqz p1, :cond_0

    .line 323
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    :cond_0
    return-void

    .end local v0           #delay:J
    .end local v4           #handler:Landroid/os/Handler;
    :cond_1
    move-wide v0, v2

    .line 252
    goto :goto_0
.end method
