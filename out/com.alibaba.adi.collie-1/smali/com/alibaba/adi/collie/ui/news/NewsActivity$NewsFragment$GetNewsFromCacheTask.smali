.class Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;
.super Landroid/os/AsyncTask;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNewsFromCacheTask"
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
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 3
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
    .line 355
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh task begin"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "news_data"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #calls: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->formatNewsList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$2(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
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
    .line 362
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh task end"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setFooterVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->clearData()V

    .line 368
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->addData(Ljava/util/List;)V

    .line 369
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setHeaderVisiability(I)V

    .line 364
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 379
    return-void

    .line 372
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromCacheTask;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mListView:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setFooterVisibility(I)V

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
