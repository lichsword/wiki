.class Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;
.super Landroid/os/AsyncTask;
.source "JokeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetJokeFromServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isRunning:Z

.field startTime:J

.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->isRunning:Z

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->getCategoryJsonObject(Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->isRunning:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->isRunning:Z

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    return-object v0
.end method

.method private getCategoryJsonObject(Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;)Lorg/json/JSONObject;
    .locals 5
    .parameter "j"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .local v1, categoryObj:Lorg/json/JSONObject;
    instance-of v3, p1, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;

    if-eqz v3, :cond_0

    .line 335
    const-string v3, "category"

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->IMAGE_FUNNY:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 340
    .local v0, categoryDataList:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    .local v2, item:Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 342
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    return-object v1

    .line 337
    .end local v0           #categoryDataList:Lorg/json/JSONArray;
    .end local v2           #item:Lorg/json/JSONObject;
    :cond_0
    const-string v3, "category"

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

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
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh refresh task begin"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->isRunning:Z

    .line 250
    new-instance v0, Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 251
    const-string v3, "image_funny_joke_data"

    .line 250
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/service/task/AppGetTask;-><init>(Landroid/content/Context;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;)V

    .line 252
    .local v0, getTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/service/task/AppGetTask;->runDirectly(Z)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$0(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$1(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->formatJokeList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$2(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->startTime:J

    sub-long v2, v5, v7

    .line 260
    .local v2, diff:J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    const-wide/16 v0, 0x0

    .line 261
    .local v0, delay:J
    :goto_0
    new-instance v4, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask$1;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;Ljava/util/List;)V

    .line 329
    .local v4, handler:Landroid/os/Handler;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    return-void

    .end local v0           #delay:J
    .end local v4           #handler:Landroid/os/Handler;
    :cond_0
    move-wide v0, v2

    .line 260
    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->startTime:J

    .line 243
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 244
    return-void
.end method
