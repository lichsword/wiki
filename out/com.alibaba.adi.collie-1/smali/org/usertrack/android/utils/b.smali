.class public Lorg/usertrack/android/utils/b;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public static k(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .parameter "aContext"

    .prologue
    .line 13
    if-eqz p0, :cond_0

    .line 15
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Landroid/app/ActivityManager;

    .line 16
    .local v2, manager:Landroid/app/ActivityManager;
    if-eqz v2, :cond_0

    .line 19
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 20
    .local v3, task_info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 22
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #task_info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return-object v0

    .line 26
    .restart local v2       #manager:Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 27
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #manager:Landroid/app/ActivityManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
