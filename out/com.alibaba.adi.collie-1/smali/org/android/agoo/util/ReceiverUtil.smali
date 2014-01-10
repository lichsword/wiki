.class public Lorg/android/agoo/util/ReceiverUtil;
.super Ljava/lang/Object;
.source "ReceiverUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    .line 63
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 66
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 85
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v1       #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, state:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 74
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, comptName:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 76
    if-eq v2, v4, :cond_0

    .line 79
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #comptName:Landroid/content/ComponentName;
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #state:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static enabledService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 87
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1

    .line 110
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v1       #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 95
    .local v2, state:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 98
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, comptName:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 100
    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_0

    .line 104
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0           #comptName:Landroid/content/ComponentName;
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #state:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static rebootReceiver(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 33
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, packageName:Ljava/lang/String;
    const/4 v11, 0x2

    :try_start_0
    invoke-virtual {v7, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 42
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 43
    .local v9, receivers:[Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_0

    array-length v11, v9

    if-nez v11, :cond_1

    .line 60
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #receivers:[Landroid/content/pm/ActivityInfo;
    :cond_0
    return-void

    .line 38
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v8       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 39
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not get receivers for package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 46
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #receivers:[Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v2, 0x0

    .line 47
    .local v2, comptName:Landroid/content/ComponentName;
    move-object v1, v9

    .local v1, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 48
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #comptName:Landroid/content/ComponentName;
    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .restart local v2       #comptName:Landroid/content/ComponentName;
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v10

    .line 50
    .local v10, state:I
    if-ne v10, v13, :cond_2

    .line 51
    invoke-virtual {v7, v2, v12, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 55
    :cond_2
    invoke-virtual {v7, v2, v12, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
