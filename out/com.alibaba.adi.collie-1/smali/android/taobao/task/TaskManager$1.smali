.class Landroid/taobao/task/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/task/TaskManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/task/TaskManager;

.field final synthetic val$task:Landroid/taobao/task/Task;


# direct methods
.method constructor <init>(Landroid/taobao/task/TaskManager;Landroid/taobao/task/Task;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Landroid/taobao/task/TaskManager$1;->this$0:Landroid/taobao/task/TaskManager;

    iput-object p2, p0, Landroid/taobao/task/TaskManager$1;->val$task:Landroid/taobao/task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/taobao/task/TaskManager$1;->val$task:Landroid/taobao/task/Task;

    invoke-virtual {v1}, Landroid/taobao/task/Task;->onTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
