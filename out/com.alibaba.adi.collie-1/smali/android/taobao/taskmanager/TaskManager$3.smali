.class Landroid/taobao/taskmanager/TaskManager$3;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/taskmanager/TaskManager;->doCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/taskmanager/TaskManager;

.field final synthetic val$task:Landroid/taobao/taskmanager/Task;


# direct methods
.method constructor <init>(Landroid/taobao/taskmanager/TaskManager;Landroid/taobao/taskmanager/Task;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Landroid/taobao/taskmanager/TaskManager$3;->this$0:Landroid/taobao/taskmanager/TaskManager;

    iput-object p2, p0, Landroid/taobao/taskmanager/TaskManager$3;->val$task:Landroid/taobao/taskmanager/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 451
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager$3;->val$task:Landroid/taobao/taskmanager/Task;

    invoke-virtual {v2}, Landroid/taobao/taskmanager/Task;->call()Z

    move-result v0

    .line 453
    .local v0, done:Z
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager$3;->val$task:Landroid/taobao/taskmanager/Task;

    iget-wide v2, v2, Landroid/taobao/taskmanager/Task;->repeat:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :cond_0
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager$3;->val$task:Landroid/taobao/taskmanager/Task;

    iget-object v2, v2, Landroid/taobao/taskmanager/Task;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 458
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager$3;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #getter for: Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/taobao/taskmanager/TaskManager;->access$100(Landroid/taobao/taskmanager/TaskManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 461
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager$3;->val$task:Landroid/taobao/taskmanager/Task;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 463
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager$3;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #getter for: Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/taobao/taskmanager/TaskManager;->access$100(Landroid/taobao/taskmanager/TaskManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 462
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
