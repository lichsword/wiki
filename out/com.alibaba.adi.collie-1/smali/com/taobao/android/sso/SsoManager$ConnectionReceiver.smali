.class Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;
.super Ljava/lang/Object;
.source "SsoManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sso/SsoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionReceiver"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mWaitersNum:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    .line 466
    return-void
.end method


# virtual methods
.method public declared-synchronized getBinder()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :goto_0
    monitor-exit p0

    return-object v1

    .line 492
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    .line 493
    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    :try_start_2
    iget v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    .line 499
    :goto_1
    iget-object v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mBinder:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    :try_start_4
    iget v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 488
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 496
    :catchall_1
    move-exception v1

    .line 497
    :try_start_5
    iget v2, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    .line 498
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    iput-object p2, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mBinder:Landroid/os/IBinder;

    .line 473
    iget v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->mWaitersNum:I

    if-lez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 471
    :cond_0
    monitor-exit p0

    .line 476
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 481
    return-void
.end method
