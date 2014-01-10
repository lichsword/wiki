.class public Landroid/taobao/util/Dump;
.super Ljava/lang/Object;
.source "Dump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpResource(Landroid/app/Application;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    .local v1, rc:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 53
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public static getResourceMemorySize(Landroid/app/Application;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 70
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v2

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, rc:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 80
    const/4 v3, -0x2

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    .local v2, size:I
    goto :goto_0

    .line 82
    .end local v2           #size:I
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public static startMonitor(Landroid/app/Application;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    if-nez p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 22
    .local v1, rc:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 27
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method
