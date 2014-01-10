.class public Lcom/etao/kakalib/util/SharedHttpClient;
.super Ljava/lang/Object;
.source "SharedHttpClient.java"


# static fields
.field private static singleStance:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNewHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 3

    .prologue
    .line 21
    const-class v2, Lcom/etao/kakalib/util/SharedHttpClient;

    monitor-enter v2

    const/4 v0, 0x0

    .line 22
    .local v0, sharedClient:Landroid/net/http/AndroidHttpClient;
    if-nez v0, :cond_0

    .line 23
    :try_start_0
    const-string v1, "apehills-android"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 28
    :cond_0
    monitor-exit v2

    return-object v0

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getSingleHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/etao/kakalib/util/SharedHttpClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/etao/kakalib/util/SharedHttpClient;->singleStance:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/etao/kakalib/util/SharedHttpClient;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    sput-object v0, Lcom/etao/kakalib/util/SharedHttpClient;->singleStance:Landroid/net/http/AndroidHttpClient;

    .line 17
    :cond_0
    sget-object v0, Lcom/etao/kakalib/util/SharedHttpClient;->singleStance:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
