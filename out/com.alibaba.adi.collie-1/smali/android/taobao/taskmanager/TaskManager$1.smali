.class Landroid/taobao/taskmanager/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/taskmanager/TaskManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/taskmanager/TaskManager;


# direct methods
.method constructor <init>(Landroid/taobao/taskmanager/TaskManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 106
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    new-instance v1, Landroid/taobao/taskmanager/TaskManager$1$1;

    invoke-direct {v1, p0}, Landroid/taobao/taskmanager/TaskManager$1$1;-><init>(Landroid/taobao/taskmanager/TaskManager$1;)V

    #setter for: Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/taobao/taskmanager/TaskManager;->access$102(Landroid/taobao/taskmanager/TaskManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 122
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #getter for: Landroid/taobao/taskmanager/TaskManager;->mInitSchule:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/taobao/taskmanager/TaskManager;->access$500(Landroid/taobao/taskmanager/TaskManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #calls: Landroid/taobao/taskmanager/TaskManager;->schedule()V
    invoke-static {v0}, Landroid/taobao/taskmanager/TaskManager;->access$600(Landroid/taobao/taskmanager/TaskManager;)V

    .line 124
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #getter for: Landroid/taobao/taskmanager/TaskManager;->mInitSchule:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/taobao/taskmanager/TaskManager;->access$500(Landroid/taobao/taskmanager/TaskManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 127
    return-void
.end method
