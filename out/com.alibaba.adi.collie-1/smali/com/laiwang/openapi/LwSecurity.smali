.class public Lcom/laiwang/openapi/LwSecurity;
.super Ljava/lang/Object;
.source "LwSecurity.java"


# static fields
.field public static sIsSecuritySahreSDK:Z

.field private static sLwSecurity:Lcom/laiwang/openapi/LwSecurity;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/laiwang/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/openapi/LwSecurity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laiwang/openapi/LwSecurity;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/laiwang/openapi/LwSecurity;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/laiwang/openapi/LwSecurity;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/laiwang/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/openapi/LwSecurity;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/laiwang/openapi/LwSecurity;

    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/openapi/LwSecurity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/laiwang/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/openapi/LwSecurity;

    .line 45
    :cond_0
    sget-object v0, Lcom/laiwang/openapi/LwSecurity;->sLwSecurity:Lcom/laiwang/openapi/LwSecurity;

    return-object v0
.end method

.method private getPackageNameByPID(I)[Ljava/lang/String;
    .locals 6
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Lcom/laiwang/openapi/LwSecurity;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    .local v0, manager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 53
    :cond_0
    const-string v4, "LWAPI"

    const-string v5, "runningProcess err"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    :goto_0
    return-object v3

    .line 56
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 57
    .local v1, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_3

    .line 58
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 21
    :try_start_0
    const-string v2, "LwUtils"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v1, 0x1

    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 22
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 23
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 24
    sput-boolean v1, Lcom/laiwang/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    goto :goto_0
.end method


# virtual methods
.method public native checkCertificate(Ljava/lang/String;)Z
.end method

.method public checkCertificateByPID(I)Z
    .locals 7
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    .line 89
    sget-boolean v4, Lcom/laiwang/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-nez v4, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/laiwang/openapi/LwSecurity;->getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, packageNames:[Ljava/lang/String;
    if-nez v2, :cond_2

    move v0, v3

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    .line 100
    .local v0, isOK:Z
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 101
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v3

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0, v1}, Lcom/laiwang/openapi/LwSecurity;->checkCertificate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public checkCertificateByUID(I)Z
    .locals 9
    .parameter "uid"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 120
    sget-boolean v4, Lcom/laiwang/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-nez v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/laiwang/openapi/LwSecurity;->getPackageNameByUID(I)[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, packageNames:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, isOK:Z
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 132
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v3

    .line 133
    goto :goto_0

    .line 135
    :cond_2
    const-string v6, "LWAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "packageName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v1}, Lcom/laiwang/openapi/LwSecurity;->checkCertificate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getPackageNameByUID(I)[Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v4, p0, Lcom/laiwang/openapi/LwSecurity;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    .local v0, manager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, runningProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 69
    :cond_0
    const-string v4, "LWAPI"

    const-string v5, "runningProcess err"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    :goto_0
    return-object v3

    .line 72
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 73
    .local v1, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_3

    .line 74
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_0
.end method
