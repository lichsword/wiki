.class Landroid/taobao/taskmanager/TaskManager$1$1;
.super Landroid/os/Handler;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/taskmanager/TaskManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/taobao/taskmanager/TaskManager$1;


# direct methods
.method constructor <init>(Landroid/taobao/taskmanager/TaskManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/taobao/taskmanager/TaskManager$1$1;->this$1:Landroid/taobao/taskmanager/TaskManager$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 108
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 109
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager$1$1;->this$1:Landroid/taobao/taskmanager/TaskManager$1;

    iget-object v1, v1, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #calls: Landroid/taobao/taskmanager/TaskManager;->doSchedule()V
    invoke-static {v1}, Landroid/taobao/taskmanager/TaskManager;->access$200(Landroid/taobao/taskmanager/TaskManager;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 111
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager$1$1;->this$1:Landroid/taobao/taskmanager/TaskManager$1;

    iget-object v1, v1, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #calls: Landroid/taobao/taskmanager/TaskManager;->doCall()V
    invoke-static {v1}, Landroid/taobao/taskmanager/TaskManager;->access$300(Landroid/taobao/taskmanager/TaskManager;)V

    goto :goto_0

    .line 112
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_3

    .line 113
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 114
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_0

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/taobao/taskmanager/Task;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager$1$1;->this$1:Landroid/taobao/taskmanager/TaskManager$1;

    iget-object v3, v1, Landroid/taobao/taskmanager/TaskManager$1;->this$0:Landroid/taobao/taskmanager/TaskManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/taobao/taskmanager/Task;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    #calls: Landroid/taobao/taskmanager/TaskManager;->taskDone(Landroid/taobao/taskmanager/Task;Z)V
    invoke-static {v3, v1, v2}, Landroid/taobao/taskmanager/TaskManager;->access$400(Landroid/taobao/taskmanager/TaskManager;Landroid/taobao/taskmanager/Task;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
