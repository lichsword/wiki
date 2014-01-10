.class Landroid/taobao/taskmanager/TaskManager$2;
.super Landroid/os/Handler;
.source "TaskManager.java"


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
.method constructor <init>(Landroid/taobao/taskmanager/TaskManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/taobao/taskmanager/TaskManager$2;->this$0:Landroid/taobao/taskmanager/TaskManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 136
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/taobao/taskmanager/Task;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/taobao/taskmanager/Task;

    invoke-virtual {v1}, Landroid/taobao/taskmanager/Task;->onRemove()V

    .line 152
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_2

    .line 142
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    .restart local v0       #obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/taobao/taskmanager/Task;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/taobao/taskmanager/Task;

    invoke-virtual {v1}, Landroid/taobao/taskmanager/Task;->onStop()V

    goto :goto_0

    .line 146
    .end local v0           #obj:Ljava/lang/Object;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .restart local v0       #obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/taobao/taskmanager/Task;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/taobao/taskmanager/Task;

    invoke-virtual {v1}, Landroid/taobao/taskmanager/Task;->onResume()V

    goto :goto_0
.end method
