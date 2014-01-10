.class public Lorg/usertrack/android/library/a/a;
.super Ljava/lang/Object;
.source "HSHAQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/usertrack/android/library/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile nA:Z

.field private qh:Lorg/usertrack/android/library/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/usertrack/android/library/a/a",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field private qi:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private qj:Ljava/lang/Object;

.field private qk:Ljava/lang/Object;

.field private ql:Lorg/usertrack/android/library/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/usertrack/android/library/a/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private qm:Z

.field private qn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private qo:Ljava/util/concurrent/CountDownLatch;

.field private qp:Z


# direct methods
.method public constructor <init>(Lorg/usertrack/android/library/a/b;Z)V
    .locals 3
    .parameter
    .parameter "aIsDispatchNow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/usertrack/android/library/a/b",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    .local p1, aListener:Lorg/usertrack/android/library/a/b;,"Lorg/usertrack/android/library/a/b<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/a/a;->qk:Ljava/lang/Object;

    .line 13
    iput-object v1, p0, Lorg/usertrack/android/library/a/a;->ql:Lorg/usertrack/android/library/a/b;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/usertrack/android/library/a/a;->qm:Z

    .line 15
    iput-object v1, p0, Lorg/usertrack/android/library/a/a;->qn:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Lorg/usertrack/android/library/a/a;->qo:Ljava/util/concurrent/CountDownLatch;

    .line 17
    iput-boolean v2, p0, Lorg/usertrack/android/library/a/a;->qp:Z

    .line 18
    iput-boolean v2, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    .line 26
    iput-object p1, p0, Lorg/usertrack/android/library/a/a;->ql:Lorg/usertrack/android/library/a/b;

    .line 27
    iput-boolean p2, p0, Lorg/usertrack/android/library/a/a;->qm:Z

    .line 28
    return-void
.end method

.method static synthetic a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic a(Lorg/usertrack/android/library/a/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lorg/usertrack/android/library/a/a;->qn:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lorg/usertrack/android/library/a/a;)Lorg/usertrack/android/library/a/b;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->ql:Lorg/usertrack/android/library/a/b;

    return-object v0
.end method

.method static synthetic c(Lorg/usertrack/android/library/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->qm:Z

    return v0
.end method

.method static synthetic d(Lorg/usertrack/android/library/a/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qo:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public C(Z)V
    .locals 1
    .parameter "aIsCanDispatch"

    .prologue
    .line 31
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    if-nez v0, :cond_0

    .line 32
    iput-boolean p1, p0, Lorg/usertrack/android/library/a/a;->qm:Z

    .line 34
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    .local p1, aObject:Ljava/lang/Object;,"TT;"
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    if-nez v0, :cond_0

    .line 83
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->qp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->ql:Lorg/usertrack/android/library/a/b;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz p1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/usertrack/android/library/a/a;->qk:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    if-nez v0, :cond_2

    .line 90
    new-instance v0, Lorg/usertrack/android/library/a/a$a;

    invoke-direct {v0, p0}, Lorg/usertrack/android/library/a/a$a;-><init>(Lorg/usertrack/android/library/a/a;)V

    iput-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    .line 91
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    .line 92
    const-string v2, "ObjectDispatchThread"

    invoke-virtual {v0, v2}, Lorg/usertrack/android/library/a/a$a;->setName(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/usertrack/android/library/a/a$a;->setDaemon(Z)V

    .line 94
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    iget-object v1, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_2
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 87
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public ek()I
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public el()V
    .locals 2

    .prologue
    .line 49
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 51
    monitor-exit v1

    .line 56
    :cond_0
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public em()V
    .locals 3

    .prologue
    .line 59
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qn:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lorg/usertrack/android/library/a/a;->qn:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lorg/usertrack/android/library/a/a;->qn:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/usertrack/android/library/a/a;->qk:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    .line 70
    new-instance v0, Lorg/usertrack/android/library/a/a$a;

    invoke-direct {v0, p0}, Lorg/usertrack/android/library/a/a$a;-><init>(Lorg/usertrack/android/library/a/a;)V

    iput-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    .line 71
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    const-string v2, "ObjectDispatchThread"

    invoke-virtual {v0, v2}, Lorg/usertrack/android/library/a/a$a;->setName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/usertrack/android/library/a/a$a;->setDaemon(Z)V

    .line 73
    iget-object v0, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 79
    :cond_1
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    iget-boolean v0, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    return v0
.end method

.method public shutdown()V
    .locals 6

    .prologue
    .local p0, this:Lorg/usertrack/android/library/a/a;,"Lorg/usertrack/android/library/a/a<TT;>;"
    const/4 v3, 0x1

    .line 110
    iget-boolean v2, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iput-boolean v3, p0, Lorg/usertrack/android/library/a/a;->nA:Z

    .line 114
    iput-boolean v3, p0, Lorg/usertrack/android/library/a/a;->qp:Z

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 116
    .local v0, currentThread:Ljava/lang/Thread;
    iget-object v2, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    if-eqz v2, :cond_0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    invoke-virtual {v3}, Lorg/usertrack/android/library/a/a$a;->getName()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 119
    if-nez v2, :cond_0

    .line 120
    iget-object v3, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/usertrack/android/library/a/a;->qo:Ljava/util/concurrent/CountDownLatch;

    .line 122
    iget-object v2, p0, Lorg/usertrack/android/library/a/a;->qh:Lorg/usertrack/android/library/a/a$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/usertrack/android/library/a/a$a;->D(Z)V

    .line 123
    iget-object v2, p0, Lorg/usertrack/android/library/a/a;->qj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 120
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object v2, p0, Lorg/usertrack/android/library/a/a;->qo:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xbb8

    .line 127
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
