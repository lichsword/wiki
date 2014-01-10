.class public Landroid/taobao/taskmanager/TaskManager;
.super Landroid/content/BroadcastReceiver;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;,
        Landroid/taobao/taskmanager/TaskManager$TaskManagerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/taobao/taskmanager/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static ACTION_START_TASK_MSG:Ljava/lang/String; = null

.field private static final ACTION_START_TASK_MSG_PREFIX:Ljava/lang/String; = "action_start_task_msg"

.field private static final CALL_THREAD_MAX_COUNT:I = 0x4

.field public static final FLAG_NEW_TASK:I = 0x2

.field public static final FLAG_UPDATE_CURRENT_TASK:I = 0x1

.field private static final MAX_TASK_COUNT:I = 0x20

.field private static final MSG_WHAT_CALL_TASK:I = 0x65

.field private static final MSG_WHAT_QUIT:I = 0x6a

.field private static final MSG_WHAT_REMOVE_TASK:I = 0x67

.field private static final MSG_WHAT_RESUME_TASK:I = 0x69

.field private static final MSG_WHAT_SCHEDULE:I = 0x64

.field private static final MSG_WHAT_STOP_TASK:I = 0x68

.field private static final MSG_WHAT_TASK_DONE:I = 0x6b

.field private static final RANGE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "TaskManager"

.field public static final TASK_ALREADY_EXIST:I = -0x4

.field public static final TASK_ILLEGAL_ARGUMENT:I = -0x1

.field public static final TASK_NOT_EXIST:I = -0x3

.field public static final TASK_OVER_MAX_COUNT:I = -0x2


# instance fields
.field private mAM:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mInitSchule:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoopThread:Ljava/lang/Thread;

.field private mMainHandler:Landroid/os/Handler;

.field private mNetworkReceiver:Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

.field private mNextTime:J

.field private mPI:Landroid/app/PendingIntent;

.field private mSchedulHandler:Landroid/os/Handler;

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/taobao/taskmanager/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPage:Landroid/taobao/threadpool2/ThreadPage;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action_start_task_msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/taobao/taskmanager/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    .line 89
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Landroid/taobao/taskmanager/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mAM:Landroid/app/AlarmManager;

    .line 93
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/taobao/taskmanager/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mPI:Landroid/app/PendingIntent;

    .line 97
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    .line 99
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mInitSchule:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/taobao/taskmanager/TaskManager$1;

    invoke-direct {v3, p0}, Landroid/taobao/taskmanager/TaskManager$1;-><init>(Landroid/taobao/taskmanager/TaskManager;)V

    const-string v4, "task_manager_thread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mLoopThread:Ljava/lang/Thread;

    .line 130
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mLoopThread:Ljava/lang/Thread;

    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 131
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mLoopThread:Ljava/lang/Thread;

    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 132
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mLoopThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 134
    new-instance v2, Landroid/taobao/taskmanager/TaskManager$2;

    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/taobao/taskmanager/TaskManager$2;-><init>(Landroid/taobao/taskmanager/TaskManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mMainHandler:Landroid/os/Handler;

    .line 155
    new-instance v2, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;-><init>(Landroid/taobao/taskmanager/TaskManager;Landroid/taobao/taskmanager/TaskManager$1;)V

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mNetworkReceiver:Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mNetworkReceiver:Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    new-instance v2, Landroid/taobao/threadpool2/ThreadPage;

    invoke-direct {v2, v5}, Landroid/taobao/threadpool2/ThreadPage;-><init>(I)V

    iput-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    .line 160
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/taobao/threadpool2/ThreadPage;->setSimulTask(I)V

    .line 161
    return-void

    .line 86
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action_start_task_msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/taobao/taskmanager/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Landroid/taobao/taskmanager/TaskManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;-><init>()V

    return-void
.end method

.method private _removeTask(Landroid/taobao/taskmanager/Task;)I
    .locals 5
    .parameter "task"

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v3, -0x1

    .line 314
    :goto_0
    return v3

    .line 300
    :cond_0
    const/4 v1, 0x0

    .line 301
    .local v1, index:I
    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/taskmanager/Task;

    .line 302
    .local v2, tmp:Landroid/taobao/taskmanager/Task;
    if-ne v2, p1, :cond_2

    .line 303
    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 304
    iget-object v3, p1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 305
    const/16 v3, 0x67

    invoke-virtual {p0, p1, v3}, Landroid/taobao/taskmanager/TaskManager;->notifyTask(Landroid/taobao/taskmanager/Task;I)V

    .line 307
    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 308
    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mAM:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/taobao/taskmanager/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 310
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 314
    .end local v2           #tmp:Landroid/taobao/taskmanager/Task;
    :cond_3
    const/4 v3, -0x3

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/taobao/taskmanager/TaskManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/taobao/taskmanager/TaskManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Landroid/taobao/taskmanager/TaskManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->doSchedule()V

    return-void
.end method

.method static synthetic access$300(Landroid/taobao/taskmanager/TaskManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->doCall()V

    return-void
.end method

.method static synthetic access$400(Landroid/taobao/taskmanager/TaskManager;Landroid/taobao/taskmanager/Task;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/taobao/taskmanager/TaskManager;->taskDone(Landroid/taobao/taskmanager/Task;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/taobao/taskmanager/TaskManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mInitSchule:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Landroid/taobao/taskmanager/TaskManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V

    return-void
.end method

.method private doAddTask(Landroid/taobao/taskmanager/Task;I)I
    .locals 8
    .parameter "task"
    .parameter "flag"

    .prologue
    const/4 v5, 0x0

    .line 246
    move-object v3, p1

    .line 247
    .local v3, target:Landroid/taobao/taskmanager/Task;
    const/4 v2, 0x1

    .line 248
    .local v2, needAdd:Z
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, current:Landroid/taobao/taskmanager/Task;
    iget-object v6, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/taskmanager/Task;

    .line 251
    .local v4, tmp:Landroid/taobao/taskmanager/Task;
    invoke-virtual {v4, p1}, Landroid/taobao/taskmanager/Task;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    move-object v0, v4

    .line 256
    .end local v4           #tmp:Landroid/taobao/taskmanager/Task;
    :cond_1
    if-eqz v0, :cond_2

    .line 257
    iget-wide v6, p1, Landroid/taobao/taskmanager/Task;->next:J

    iput-wide v6, v0, Landroid/taobao/taskmanager/Task;->next:J

    .line 258
    iget-wide v6, p1, Landroid/taobao/taskmanager/Task;->delay:J

    iput-wide v6, v0, Landroid/taobao/taskmanager/Task;->delay:J

    .line 259
    iget-wide v6, p1, Landroid/taobao/taskmanager/Task;->repeat:J

    iput-wide v6, v0, Landroid/taobao/taskmanager/Task;->repeat:J

    .line 260
    iget-object v6, p1, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v6, v0, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 261
    iget-object v6, v0, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 262
    iget-object v6, v0, Landroid/taobao/taskmanager/Task;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 263
    move-object v3, v0

    .line 264
    const/4 v2, 0x0

    .line 273
    .end local v0           #current:Landroid/taobao/taskmanager/Task;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_3

    .line 274
    iget-object v6, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V

    .line 279
    :goto_0
    return v5

    .line 266
    :cond_4
    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    .line 267
    iget-object v6, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/taskmanager/Task;

    .line 268
    .restart local v4       #tmp:Landroid/taobao/taskmanager/Task;
    if-ne v4, p1, :cond_5

    .line 269
    const/4 v5, -0x4

    goto :goto_0
.end method

.method private doCall()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 432
    iget-object v4, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/taskmanager/Task;

    .line 433
    .local v1, task:Landroid/taobao/taskmanager/Task;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 434
    .local v2, time:J
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 435
    iget-wide v4, v1, Landroid/taobao/taskmanager/Task;->next:J

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 436
    invoke-virtual {v1}, Landroid/taobao/taskmanager/Task;->isMustAccurate()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v1, Landroid/taobao/taskmanager/Task;->next:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    .line 440
    :cond_1
    invoke-virtual {v1}, Landroid/taobao/taskmanager/Task;->isMustNetwork()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/taobao/taskmanager/TaskManager;->mNetworkReceiver:Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

    iget-boolean v4, v4, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;->mIsConnected:Z

    if-eqz v4, :cond_0

    .line 444
    :cond_2
    iget-object v4, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 446
    iget-object v4, p0, Landroid/taobao/taskmanager/TaskManager;->mThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    new-instance v5, Landroid/taobao/taskmanager/TaskManager$3;

    invoke-direct {v5, p0, v1}, Landroid/taobao/taskmanager/TaskManager$3;-><init>(Landroid/taobao/taskmanager/TaskManager;Landroid/taobao/taskmanager/Task;)V

    invoke-virtual {v4, v5, v8}, Landroid/taobao/threadpool2/ThreadPage;->execute(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 472
    .end local v1           #task:Landroid/taobao/taskmanager/Task;
    .end local v2           #time:J
    :cond_3
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V

    .line 473
    return-void
.end method

.method private doSchedule()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide/16 v11, 0x0

    .line 384
    const-string v7, "TaskManager"

    const-string v8, "doSchedule"

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-wide/16 v2, 0x0

    .line 386
    .local v2, next:J
    iget-object v7, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-static {v7, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 388
    .local v5, time:J
    iget-object v7, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/taskmanager/Task;

    .line 389
    .local v4, task:Landroid/taobao/taskmanager/Task;
    if-eqz v4, :cond_0

    iget-object v7, v4, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-nez v7, :cond_0

    .line 391
    iget-wide v7, v4, Landroid/taobao/taskmanager/Task;->repeat:J

    cmp-long v7, v7, v11

    if-gtz v7, :cond_1

    iget-object v7, v4, Landroid/taobao/taskmanager/Task;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ge v7, v13, :cond_0

    .line 394
    :cond_1
    invoke-virtual {v4}, Landroid/taobao/taskmanager/Task;->isMustNetwork()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/taobao/taskmanager/TaskManager;->mNetworkReceiver:Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

    iget-boolean v7, v7, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;->mIsConnected:Z

    if-eqz v7, :cond_0

    .line 398
    :cond_2
    iget-wide v7, v4, Landroid/taobao/taskmanager/Task;->next:J

    cmp-long v7, v7, v5

    if-gtz v7, :cond_5

    .line 400
    const-string v7, "TaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expire:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v4, Landroid/taobao/taskmanager/Task;->next:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-wide/16 v7, 0x64

    add-long v2, v5, v7

    .line 420
    .end local v4           #task:Landroid/taobao/taskmanager/Task;
    :cond_3
    :goto_0
    cmp-long v7, v2, v11

    if-eqz v7, :cond_4

    iget-wide v7, p0, Landroid/taobao/taskmanager/TaskManager;->mNextTime:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_4

    .line 421
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 422
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 423
    const-string v7, "TaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "next time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iput-wide v2, p0, Landroid/taobao/taskmanager/TaskManager;->mNextTime:J

    .line 426
    iget-object v7, p0, Landroid/taobao/taskmanager/TaskManager;->mAM:Landroid/app/AlarmManager;

    iget-object v8, p0, Landroid/taobao/taskmanager/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 427
    iget-object v7, p0, Landroid/taobao/taskmanager/TaskManager;->mAM:Landroid/app/AlarmManager;

    iget-wide v8, p0, Landroid/taobao/taskmanager/TaskManager;->mNextTime:J

    iget-object v10, p0, Landroid/taobao/taskmanager/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v7, v13, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 429
    .end local v0           #date:Ljava/util/Date;
    :cond_4
    return-void

    .line 405
    .restart local v4       #task:Landroid/taobao/taskmanager/Task;
    :cond_5
    cmp-long v7, v2, v11

    if-nez v7, :cond_6

    .line 406
    iget-wide v2, v4, Landroid/taobao/taskmanager/Task;->next:J

    .line 407
    invoke-virtual {v4}, Landroid/taobao/taskmanager/Task;->isMustAccurate()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 410
    :cond_6
    iget-wide v7, v4, Landroid/taobao/taskmanager/Task;->next:J

    const-wide/32 v9, 0xea60

    add-long/2addr v9, v2

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 411
    invoke-virtual {v4}, Landroid/taobao/taskmanager/Task;->isMustAccurate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 412
    iget-wide v2, v4, Landroid/taobao/taskmanager/Task;->next:J

    .line 413
    goto :goto_0
.end method

.method public static getInstance()Landroid/taobao/taskmanager/TaskManager;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Landroid/taobao/taskmanager/TaskManager$TaskManagerHolder;->sInstance:Landroid/taobao/taskmanager/TaskManager;

    return-object v0
.end method

.method private schedule()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "TaskManager"

    const-string v1, "send schedule"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mInitSchule:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private taskDone(Landroid/taobao/taskmanager/Task;Z)V
    .locals 7
    .parameter "task"
    .parameter "done"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 532
    if-eqz p2, :cond_1

    .line 533
    iget-object v0, p1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 534
    invoke-virtual {p1}, Landroid/taobao/taskmanager/Task;->isAutoRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0, p1}, Landroid/taobao/taskmanager/TaskManager;->_removeTask(Landroid/taobao/taskmanager/Task;)I

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 539
    iget-wide v0, p1, Landroid/taobao/taskmanager/Task;->repeat:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_2

    .line 540
    iget-object v0, p1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 541
    iput-wide v5, p1, Landroid/taobao/taskmanager/Task;->next:J

    goto :goto_0

    .line 544
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/taobao/taskmanager/Task;->repeat:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/taobao/taskmanager/Task;->next:J

    .line 545
    iget-object v0, p1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 547
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V

    goto :goto_0
.end method


# virtual methods
.method public addTask(Landroid/taobao/taskmanager/Task;J)I
    .locals 7
    .parameter "task"
    .parameter "delay"

    .prologue
    .line 181
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/taobao/taskmanager/TaskManager;->addTask(Landroid/taobao/taskmanager/Task;JJI)I

    move-result v0

    return v0
.end method

.method public addTask(Landroid/taobao/taskmanager/Task;JJ)I
    .locals 7
    .parameter "task"
    .parameter "delay"
    .parameter "repeat"

    .prologue
    .line 195
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/taobao/taskmanager/TaskManager;->addTask(Landroid/taobao/taskmanager/Task;JJI)I

    move-result v0

    return v0
.end method

.method public addTask(Landroid/taobao/taskmanager/Task;JJI)I
    .locals 8
    .parameter "task"
    .parameter "delay"
    .parameter "repeat"
    .parameter "attribut"

    .prologue
    .line 209
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/taobao/taskmanager/TaskManager;->addTask(Landroid/taobao/taskmanager/Task;JJII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized addTask(Landroid/taobao/taskmanager/Task;JJII)I
    .locals 3
    .parameter "task"
    .parameter "delay"
    .parameter "repeat"
    .parameter "attribut"
    .parameter "flag"

    .prologue
    const-wide/16 v1, 0x0

    .line 226
    monitor-enter p0

    if-eqz p1, :cond_0

    cmp-long v0, p2, v1

    if-ltz v0, :cond_0

    cmp-long v0, p4, v1

    if-ltz v0, :cond_0

    if-gez p6, :cond_1

    .line 227
    :cond_0
    const/4 v0, -0x1

    .line 241
    :goto_0
    monitor-exit p0

    return v0

    .line 230
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    .line 231
    const/4 v0, -0x2

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const/4 v0, -0x4

    goto :goto_0

    .line 236
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p1, Landroid/taobao/taskmanager/Task;->next:J

    .line 237
    iput-wide p4, p1, Landroid/taobao/taskmanager/Task;->repeat:J

    .line 238
    iput-wide p2, p1, Landroid/taobao/taskmanager/Task;->delay:J

    .line 239
    iget-object v0, p1, Landroid/taobao/taskmanager/Task;->attribut:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 241
    invoke-direct {p0, p1, p7}, Landroid/taobao/taskmanager/TaskManager;->doAddTask(Landroid/taobao/taskmanager/Task;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compare(Landroid/taobao/taskmanager/Task;Landroid/taobao/taskmanager/Task;)I
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 556
    iget-wide v0, p1, Landroid/taobao/taskmanager/Task;->next:J

    iget-wide v2, p2, Landroid/taobao/taskmanager/Task;->next:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Landroid/taobao/taskmanager/Task;

    .end local p1
    check-cast p2, Landroid/taobao/taskmanager/Task;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/taobao/taskmanager/TaskManager;->compare(Landroid/taobao/taskmanager/Task;Landroid/taobao/taskmanager/Task;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized destroy()V
    .locals 4

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/taskmanager/Task;

    .line 358
    .local v1, task:Landroid/taobao/taskmanager/Task;
    iget-object v2, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 359
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Landroid/taobao/taskmanager/TaskManager;->notifyTask(Landroid/taobao/taskmanager/Task;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Landroid/taobao/taskmanager/Task;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 361
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 363
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    :cond_1
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/taobao/taskmanager/TaskManager;->mNetworkReceiver:Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 367
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mThreadPage:Landroid/taobao/threadpool2/ThreadPage;

    invoke-virtual {v2}, Landroid/taobao/threadpool2/ThreadPage;->destroy()V

    .line 369
    const/4 v2, 0x0

    sput-object v2, Landroid/taobao/taskmanager/TaskManager$TaskManagerHolder;->sInstance:Landroid/taobao/taskmanager/TaskManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    monitor-exit p0

    return-void
.end method

.method notifyTask(Landroid/taobao/taskmanager/Task;I)V
    .locals 2
    .parameter "task"
    .parameter "what"

    .prologue
    .line 318
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 319
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 321
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/taobao/taskmanager/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/taobao/taskmanager/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 483
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/taobao/taskmanager/TaskManager;->mNextTime:J

    .line 484
    iget-object v1, p0, Landroid/taobao/taskmanager/TaskManager;->mSchedulHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    :cond_0
    return-void
.end method

.method public declared-synchronized removeTask(Landroid/taobao/taskmanager/Task;)I
    .locals 2
    .parameter "task"

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/taobao/taskmanager/TaskManager;->_removeTask(Landroid/taobao/taskmanager/Task;)I

    move-result v0

    .line 290
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return v0

    .line 289
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resume()V
    .locals 4

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/taskmanager/Task;

    .line 331
    .local v1, task:Landroid/taobao/taskmanager/Task;
    iget-object v2, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 332
    iget-object v2, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 333
    const/16 v2, 0x69

    invoke-virtual {p0, v1, v2}, Landroid/taobao/taskmanager/TaskManager;->notifyTask(Landroid/taobao/taskmanager/Task;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Landroid/taobao/taskmanager/Task;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 337
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/taobao/taskmanager/TaskManager;->mTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/taskmanager/Task;

    .line 345
    .local v1, task:Landroid/taobao/taskmanager/Task;
    invoke-virtual {v1}, Landroid/taobao/taskmanager/Task;->isPermanent()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 346
    iget-object v2, v1, Landroid/taobao/taskmanager/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 347
    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Landroid/taobao/taskmanager/TaskManager;->notifyTask(Landroid/taobao/taskmanager/Task;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Landroid/taobao/taskmanager/Task;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 350
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/taobao/taskmanager/TaskManager;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    monitor-exit p0

    return-void
.end method
