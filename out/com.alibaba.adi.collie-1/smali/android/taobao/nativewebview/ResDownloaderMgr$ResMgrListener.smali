.class Landroid/taobao/nativewebview/ResDownloaderMgr$ResMgrListener;
.super Ljava/lang/Object;
.source "ResDownloaderMgr.java"

# interfaces
.implements Landroid/taobao/nativewebview/WebListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/nativewebview/ResDownloaderMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResMgrListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback([BLjava/util/Map;I)V
    .locals 11
    .parameter "data"
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v7, Landroid/taobao/nativewebview/ResDownloaderMgr;

    monitor-enter v7

    .line 64
    :try_start_0
    const-string v6, "url"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    .local v5, url:Ljava/lang/String;
    const-string v6, "response-code"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, code:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    const-string v0, "NO Code"

    .line 70
    :cond_0
    const-string v6, "ResDownloaderMgr"

    const-string v8, "callback() downloaded url=%s, code=%s "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    invoke-static {}, Landroid/taobao/nativewebview/ResDownloaderMgr;->access$000()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 75
    invoke-static {}, Landroid/taobao/nativewebview/ResDownloaderMgr;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 77
    .restart local v3       #listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    invoke-static {}, Landroid/taobao/nativewebview/ResDownloaderMgr;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    if-eqz v3, :cond_2

    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 83
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/nativewebview/WebListener;

    .line 85
    .local v2, listener:Landroid/taobao/nativewebview/WebListener;
    invoke-interface {v2, p1, p2, p3}, Landroid/taobao/nativewebview/WebListener;->callback([BLjava/util/Map;I)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1           #i:I
    .end local v2           #listener:Landroid/taobao/nativewebview/WebListener;
    .end local v4           #size:I
    :cond_2
    monitor-exit v7

    .line 90
    return-void

    .line 89
    .end local v0           #code:Ljava/lang/String;
    .end local v3           #listenerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/taobao/nativewebview/WebListener;>;"
    .end local v5           #url:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
