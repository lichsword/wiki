.class public Lorg/android/agoo/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtil"

.field private static threadInitNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 3

    .prologue
    .line 12
    const-class v1, Lorg/android/agoo/util/ThreadUtil;

    monitor-enter v1

    :try_start_0
    sget v0, Lorg/android/agoo/util/ThreadUtil;->threadInitNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/android/agoo/util/ThreadUtil;->threadInitNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startRunnable(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 16
    if-eqz p0, :cond_0

    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agoo-thread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/android/agoo/util/ThreadUtil;->nextThreadNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "ThreadUtil"

    const-string v2, "startTread"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
