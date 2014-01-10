.class Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;
.super Landroid/os/CountDownTimer;
.source "LockFailedManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->initLockFailCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    const/4 v2, 0x0

    #setter for: Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->access$1(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;I)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    iget-object v1, v1, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    iget-object v1, v1, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    :cond_1
    return-void

    .line 56
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 57
    .local v0, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;->onFinish()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    #getter for: Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->access$0(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #setter for: Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->lockTimeOut:I
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->access$1(Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;I)V

    .line 43
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    iget-object v1, v1, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger$1;->this$0:Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    iget-object v1, v1, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    .local v0, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;->onTick()V

    goto :goto_0
.end method
