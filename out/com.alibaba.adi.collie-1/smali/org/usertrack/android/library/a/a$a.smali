.class Lorg/usertrack/android/library/a/a$a;
.super Ljava/lang/Thread;
.source "HSHAQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/usertrack/android/library/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private volatile qq:Z

.field final synthetic qr:Lorg/usertrack/android/library/a/a;


# direct methods
.method constructor <init>(Lorg/usertrack/android/library/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/usertrack/android/library/a/a$a;->qq:Z

    return-void
.end method


# virtual methods
.method public D(Z)V
    .locals 0
    .parameter "exitFlag"

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/usertrack/android/library/a/a$a;->qq:Z

    .line 140
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    :cond_0
    iget-boolean v2, p0, Lorg/usertrack/android/library/a/a$a;->qq:Z

    if-eqz v2, :cond_4

    .line 150
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->e(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->e(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    :cond_2
    return-void

    .line 151
    :cond_3
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, object:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_1

    .line 153
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2, v1}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->b(Lorg/usertrack/android/library/a/a;)Lorg/usertrack/android/library/a/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/usertrack/android/library/a/b;->j(Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2, v4}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;Ljava/lang/Object;)V

    .line 156
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v1           #object:Ljava/lang/Object;,"TT;"
    :cond_4
    iget-boolean v2, p0, Lorg/usertrack/android/library/a/a$a;->qq:Z

    if-nez v2, :cond_8

    .line 162
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->c(Lorg/usertrack/android/library/a/a;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    :cond_5
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->d(Lorg/usertrack/android/library/a/a;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 164
    :try_start_0
    iget-boolean v2, p0, Lorg/usertrack/android/library/a/a$a;->qq:Z

    if-nez v2, :cond_7

    .line 165
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->c(Lorg/usertrack/android/library/a/a;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 167
    :cond_6
    :try_start_1
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->d(Lorg/usertrack/android/library/a/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :cond_7
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_8
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->c(Lorg/usertrack/android/library/a/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    :cond_9
    :goto_2
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 177
    .restart local v1       #object:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_9

    .line 178
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2, v1}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->b(Lorg/usertrack/android/library/a/a;)Lorg/usertrack/android/library/a/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/usertrack/android/library/a/b;->j(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2, v4}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lorg/usertrack/android/library/a/a$a;->qr:Lorg/usertrack/android/library/a/a;

    invoke-static {v2}, Lorg/usertrack/android/library/a/a;->a(Lorg/usertrack/android/library/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    .end local v1           #object:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
