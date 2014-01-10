.class public Landroid/taobao/nativewebview/ResDownloaderMgr;
.super Ljava/lang/Object;
.source "ResDownloaderMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;
    }
.end annotation


# static fields
.field private static RES_CONCURRENT_NUM:I

.field private static listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/nativewebview/WebListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mgrListener:Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;

.field private static resThreadPage:Landroid/taobao/threadpool2/ThreadPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    .line 17
    const/16 v0, 0xa

    sput v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->RES_CONCURRENT_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized downloadRes(Landroid/app/Application;Ljava/lang/String;Landroid/taobao/nativewebview/WebListener;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 38
    const-class v2, Landroid/taobao/nativewebview/ResDownloaderMgr;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/taobao/nativewebview/ResDownloaderMgr;->init()V

    .line 39
    sget-object v1, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "ResDownloaderMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloading:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .local v0, listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit v2

    return-void

    .line 47
    .end local v0           #listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    :cond_0
    :try_start_1
    const-string v1, "ResDownloaderMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .restart local v0       #listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    sget-object v1, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Landroid/taobao/nativewebview/ResDownloaderMgr;->resThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    new-instance v3, Landroid/taobao/nativewebview/ResDownloader;

    const/4 v4, 0x0

    sget-object v5, Landroid/taobao/nativewebview/ResDownloaderMgr;->mgrListener:Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;

    invoke-direct {v3, p0, p1, v4, v5}, Landroid/taobao/nativewebview/ResDownloader;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/nativewebview/WebListener;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/taobao/threadpool2/ThreadPage;->execute(Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    .end local v0           #listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized init()V
    .locals 3

    .prologue
    .line 24
    const-class v1, Landroid/taobao/nativewebview/ResDownloaderMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    .line 26
    :cond_0
    sget-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->resThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    if-nez v0, :cond_3

    .line 27
    new-instance v0, Landroid/taobao/threadpool2/ThreadPage;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/taobao/threadpool2/ThreadPage;-><init>(I)V

    sput-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->resThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->resThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    sget v2, Landroid/taobao/nativewebview/ResDownloaderMgr;->RES_CONCURRENT_NUM:I

    invoke-virtual {v0, v2}, Landroid/taobao/threadpool2/ThreadPage;->setSimulTask(I)V

    .line 33
    sget-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->mgrListener:Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;

    invoke-direct {v0}, Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;-><init>()V

    sput-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->mgrListener:Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_2
    monitor-exit v1

    return-void

    .line 29
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/taobao/threadpool2/ThreadPool;->getInstance()Landroid/taobao/threadpool2/ThreadPool;

    move-result-object v0

    sget-object v2, Landroid/taobao/nativewebview/ResDownloaderMgr;->resThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    invoke-virtual {v0, v2}, Landroid/taobao/threadpool2/ThreadPool;->isRegistered(Landroid/taobao/threadpool2/TaskHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    sget-object v0, Landroid/taobao/nativewebview/ResDownloaderMgr;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
