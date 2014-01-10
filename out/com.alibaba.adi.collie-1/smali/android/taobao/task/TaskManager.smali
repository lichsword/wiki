.class public Landroid/taobao/task/TaskManager;
.super Landroid/content/BroadcastReceiver;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/taobao/task/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static ACTION_START_TASK_MSG:Ljava/lang/String; = null

.field private static final ACTION_START_TASK_MSG_PREFIX:Ljava/lang/String; = "action_start_task_msg"

.field private static final RANGE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "TaskManager"

.field private static sInstance:Landroid/taobao/task/TaskManager;


# instance fields
.field private mAM:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mPI:Landroid/app/PendingIntent;

.field private mTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/taobao/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/taobao/task/TaskManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action_start_task_msg"

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

    sput-object v2, Landroid/taobao/task/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Landroid/taobao/task/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/taobao/task/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iget-object v2, p0, Landroid/taobao/task/TaskManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/taobao/task/TaskManager;->mAM:Landroid/app/AlarmManager;

    .line 40
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/taobao/task/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/taobao/task/TaskManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/task/TaskManager;->mPI:Landroid/app/PendingIntent;

    .line 43
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/taobao/task/TaskManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    sget-object v0, Landroid/taobao/task/TaskManager;->sInstance:Landroid/taobao/task/TaskManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/taobao/task/TaskManager;

    invoke-direct {v0, p0}, Landroid/taobao/task/TaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/taobao/task/TaskManager;->sInstance:Landroid/taobao/task/TaskManager;

    .line 53
    :cond_0
    sget-object v0, Landroid/taobao/task/TaskManager;->sInstance:Landroid/taobao/task/TaskManager;

    return-object v0
.end method

.method private scheduleAlarm()V
    .locals 15

    .prologue
    .line 118
    const-wide/16 v4, 0x0

    .line 119
    .local v4, r:J
    const-wide/16 v2, 0x0

    .line 120
    .local v2, l:J
    iget-object v9, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-static {v9, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 122
    .local v7, time:J
    const/4 v0, 0x0

    .line 123
    .local v0, expire:Z
    iget-object v9, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/taobao/task/Task;

    .line 124
    .local v6, task:Landroid/taobao/task/Task;
    if-eqz v6, :cond_0

    .line 125
    iget-wide v9, v6, Landroid/taobao/task/Task;->next:J

    cmp-long v9, v9, v7

    if-gtz v9, :cond_1

    .line 126
    const/4 v0, 0x1

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_2

    .line 130
    iget-wide v2, v6, Landroid/taobao/task/Task;->next:J

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    iget-wide v9, v6, Landroid/taobao/task/Task;->next:J

    const-wide/32 v11, 0xea60

    add-long/2addr v11, v2

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 134
    iget-wide v4, v6, Landroid/taobao/task/Task;->next:J

    goto :goto_0

    .line 140
    .end local v6           #task:Landroid/taobao/task/Task;
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-eqz v9, :cond_6

    .line 142
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-nez v9, :cond_5

    .line 143
    iget-object v9, p0, Landroid/taobao/task/TaskManager;->mAM:Landroid/app/AlarmManager;

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/taobao/task/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v2, v3, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 151
    :cond_4
    :goto_1
    return-void

    .line 145
    :cond_5
    iget-object v9, p0, Landroid/taobao/task/TaskManager;->mAM:Landroid/app/AlarmManager;

    const/4 v10, 0x1

    add-long v11, v2, v4

    const-wide/16 v13, 0x2

    div-long/2addr v11, v13

    iget-object v13, p0, Landroid/taobao/task/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 147
    :cond_6
    if-eqz v0, :cond_4

    .line 148
    iget-object v9, p0, Landroid/taobao/task/TaskManager;->mAM:Landroid/app/AlarmManager;

    const/4 v10, 0x1

    const-wide/16 v11, 0x64

    iget-object v13, p0, Landroid/taobao/task/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method


# virtual methods
.method public addTask(Landroid/taobao/task/Task;J)V
    .locals 5
    .parameter "task"
    .parameter "delay"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, target:Landroid/taobao/task/Task;
    iget-object v3, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/task/Task;

    .line 66
    .local v2, tmp:Landroid/taobao/task/Task;
    invoke-virtual {v2, p1}, Landroid/taobao/task/Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    move-object v1, v2

    .line 72
    .end local v2           #tmp:Landroid/taobao/task/Task;
    :cond_2
    if-nez v1, :cond_3

    .line 73
    move-object v1, p1

    .line 74
    iget-object v3, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    iput-wide v3, v1, Landroid/taobao/task/Task;->next:J

    .line 78
    iput-wide p2, v1, Landroid/taobao/task/Task;->delay:J

    .line 80
    invoke-direct {p0}, Landroid/taobao/task/TaskManager;->scheduleAlarm()V

    goto :goto_0
.end method

.method public addTask(Landroid/taobao/task/Task;JJ)V
    .locals 5
    .parameter "task"
    .parameter "delay"
    .parameter "repeat"

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, target:Landroid/taobao/task/Task;
    iget-object v3, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/task/Task;

    .line 94
    .local v2, tmp:Landroid/taobao/task/Task;
    invoke-virtual {v2, p1}, Landroid/taobao/task/Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    move-object v1, v2

    .line 99
    .end local v2           #tmp:Landroid/taobao/task/Task;
    :cond_2
    if-nez v1, :cond_3

    .line 100
    move-object v1, p1

    .line 101
    iget-object v3, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    iput-wide v3, v1, Landroid/taobao/task/Task;->next:J

    .line 104
    iput-wide p4, v1, Landroid/taobao/task/Task;->repeat:J

    .line 105
    iput-wide p2, v1, Landroid/taobao/task/Task;->delay:J

    .line 107
    invoke-direct {p0}, Landroid/taobao/task/TaskManager;->scheduleAlarm()V

    goto :goto_0
.end method

.method public compare(Landroid/taobao/task/Task;Landroid/taobao/task/Task;)I
    .locals 4
    .parameter "l"
    .parameter "r"

    .prologue
    .line 192
    iget-wide v0, p1, Landroid/taobao/task/Task;->next:J

    iget-wide v2, p2, Landroid/taobao/task/Task;->next:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    check-cast p1, Landroid/taobao/task/Task;

    .end local p1
    check-cast p2, Landroid/taobao/task/Task;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/taobao/task/TaskManager;->compare(Landroid/taobao/task/Task;Landroid/taobao/task/Task;)I

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, action:Ljava/lang/String;
    sget-object v8, Landroid/taobao/task/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 157
    const-string v8, "TaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/taobao/task/TaskManager;->ACTION_START_TASK_MSG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v8, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v2, v8, [Landroid/taobao/task/Task;

    .line 159
    .local v2, array:[Landroid/taobao/task/Task;
    iget-object v8, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    move-object v1, v2

    .local v1, arr$:[Landroid/taobao/task/Task;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .line 161
    .local v5, task:Landroid/taobao/task/Task;
    if-eqz v5, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 163
    .local v6, time:J
    iget-wide v8, v5, Landroid/taobao/task/Task;->next:J

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x7530

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 164
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Landroid/taobao/task/TaskManager$1;

    invoke-direct {v9, p0, v5}, Landroid/taobao/task/TaskManager$1;-><init>(Landroid/taobao/task/TaskManager;Landroid/taobao/task/Task;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 178
    iget-wide v8, v5, Landroid/taobao/task/Task;->repeat:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 179
    invoke-virtual {p0, v5}, Landroid/taobao/task/TaskManager;->removeTask(Landroid/taobao/task/Task;)V

    .line 160
    .end local v6           #time:J
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .restart local v6       #time:J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v5, Landroid/taobao/task/Task;->repeat:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/taobao/task/Task;->next:J

    goto :goto_1

    .line 186
    .end local v5           #task:Landroid/taobao/task/Task;
    .end local v6           #time:J
    :cond_2
    invoke-direct {p0}, Landroid/taobao/task/TaskManager;->scheduleAlarm()V

    .line 188
    .end local v1           #arr$:[Landroid/taobao/task/Task;
    .end local v2           #array:[Landroid/taobao/task/Task;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    return-void
.end method

.method public removeTask(Landroid/taobao/task/Task;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Landroid/taobao/task/TaskManager;->mTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/taobao/task/TaskManager;->mAM:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/taobao/task/TaskManager;->mPI:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 116
    :cond_0
    return-void
.end method
