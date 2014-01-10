.class Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;
.super Landroid/os/AsyncTask;
.source "JokeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetJokeFromCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isRunning:Z

.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->isRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    const-string v2, "image_funny_joke_data"

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, content:Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->formatJokeList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$2(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->isRunning:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .parameter
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
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    const/4 v4, 0x0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setFooterVisisablity(I)V

    .line 389
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setHeaderVisiability(I)V

    .line 390
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$3(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->setData(Ljava/util/List;)V

    .line 386
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 399
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->isRunning:Z

    .line 400
    return-void

    .line 392
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mListView:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setFooterVisisablity(I)V

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromCacheTask;->isRunning:Z

    .line 369
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 370
    return-void
.end method
