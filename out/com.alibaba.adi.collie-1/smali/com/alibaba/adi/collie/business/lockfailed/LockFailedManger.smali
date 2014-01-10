.class public Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;
.super Ljava/lang/Object;
.source "LockFailedManger.java"


# static fields
.field private static sInstance:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;


# instance fields
.field private final failTimeout:I

.field private lockFailCountDownTimer:Landroid/os/CountDownTimer;

.field private lockTimeOut:I

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final timeout:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->timeout:I

    .line 17
    const/16 v0, 0x7530

    iput v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->failTimeout:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    .line 20
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->initLockFailCountDownTimer()V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->sInstance:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->sInstance:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    .line 74
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->sInstance:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    return-object v0
.end method

.method private indexOfListeners(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)I
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v3, -0x1

    .line 80
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v3

    .line 92
    :cond_1
    :goto_0
    return v0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 85
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_3

    move v0, v3

    .line 92
    goto :goto_0

    .line 86
    :cond_3
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 87
    .local v1, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initLockFailCountDownTimer()V
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;-><init>(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;JJ)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockFailCountDownTimer:Landroid/os/CountDownTimer;

    .line 64
    return-void
.end method


# virtual methods
.method public addOnLockFailListener(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->indexOfListeners(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)I

    move-result v0

    if-gez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    return-void
.end method

.method public getLockTimeOut()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    return v0
.end method

.method public isLockFailed()Z
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method public removeOnLockFailListener(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->indexOfListeners(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)I

    move-result v0

    .line 118
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLockTimeOut(I)V
    .locals 0
    .parameter "lockTimeOut"

    .prologue
    .line 67
    iput p1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    .line 68
    return-void
.end method

.method public startFailCountDownTimer()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockFailCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockFailCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 26
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I

    .line 28
    :cond_0
    return-void
.end method
