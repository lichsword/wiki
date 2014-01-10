.class public Landroid/taobao/util/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# instance fields
.field private uriGetter:Landroid/taobao/util/ApnUriGetter;


# direct methods
.method public constructor <init>(Landroid/taobao/util/ApnUriGetter;)V
    .locals 0
    .parameter "uriGetter"

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/taobao/util/ConnectionChangeReceiver;->uriGetter:Landroid/taobao/util/ApnUriGetter;

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, param:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/taobao/util/ConnectionChangeReceiver;->uriGetter:Landroid/taobao/util/ApnUriGetter;

    invoke-interface {v3}, Landroid/taobao/util/ApnUriGetter;->getUriList()[Landroid/net/Uri;

    move-result-object v2

    .line 22
    .local v2, uris:[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 23
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 24
    aget-object v3, v2, v0

    invoke-static {p1, v3}, Landroid/taobao/util/NetWork;->getProxyInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 25
    :cond_0
    if-eqz v1, :cond_2

    .line 26
    const-string v3, "host"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "port"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/taobao/util/NetWork;->setProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    return-void

    .line 22
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
