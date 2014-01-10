.class public abstract Landroid/taobao/taskmanager/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static final AUTO_REMOVED:I = 0x4

.field public static final MUST_ACCURATE:I = 0x8

.field public static final MUST_NETWORK:I = 0x2

.field public static final PERMANENT:I = 0x1

.field static final STATE_FINISHED:I = 0x3

.field static final STATE_PENGDING:I = 0x0

.field static final STATE_RUNNING:I = 0x1

.field static final STATE_STOP:I = 0x2


# instance fields
.field attribut:Ljava/util/concurrent/atomic/AtomicInteger;

.field count:Ljava/util/concurrent/atomic/AtomicInteger;

.field delay:J

.field next:J

.field repeat:J

.field state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v2, p0, Landroid/taobao/taskmanager/Task;->repeat:J

    .line 31
    iput-wide v2, p0, Landroid/taobao/taskmanager/Task;->next:J

    .line 32
    iput-wide v2, p0, Landroid/taobao/taskmanager/Task;->delay:J

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/taskmanager/Task;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method protected abstract call()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isAutoRemoved()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMustAccurate()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMustNetwork()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPermanent()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
