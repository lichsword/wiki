.class public Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# instance fields
.field private qC:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/usertrack/android/library/connection/OnConnectionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private qD:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public addListener(Lorg/usertrack/android/library/connection/OnConnectionChangeListener;)Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;
    .locals 1
    .parameter "aListener"

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .parameter "aContext"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-static {p1}, Lorg/usertrack/android/utils/i;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/usertrack/android/library/connection/OnConnectionChangeListener;

    .line 40
    .local v0, listener:Lorg/usertrack/android/library/connection/OnConnectionChangeListener;
    iget-object v2, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 41
    iget-object v3, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 40
    invoke-interface {v0, p1, v2, v3}, Lorg/usertrack/android/library/connection/OnConnectionChangeListener;->onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "aContext"
    .parameter "aArg1"

    .prologue
    .line 49
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 50
    :try_start_0
    invoke-static {p1}, Lorg/usertrack/android/utils/i;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-static {p1}, Lorg/usertrack/android/utils/i;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, connectionInfo:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 54
    iget-object v2, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 56
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    :cond_0
    iget-object v2, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    iput-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qD:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v0           #connectionInfo:[Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    .restart local v0       #connectionInfo:[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/usertrack/android/library/connection/OnConnectionChangeListener;

    .line 59
    .local v1, listener:Lorg/usertrack/android/library/connection/OnConnectionChangeListener;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 58
    invoke-interface {v1, p1, v3, v4}, Lorg/usertrack/android/library/connection/OnConnectionChangeListener;->onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    .end local v0           #connectionInfo:[Ljava/lang/String;
    .end local v1           #listener:Lorg/usertrack/android/library/connection/OnConnectionChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeListener(Lorg/usertrack/android/library/connection/OnConnectionChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 30
    iget-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->qC:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method
