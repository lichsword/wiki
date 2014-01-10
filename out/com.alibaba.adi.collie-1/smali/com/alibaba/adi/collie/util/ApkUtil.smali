.class public Lcom/alibaba/adi/collie/util/ApkUtil;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# static fields
.field public static INSTALLED:I

.field public static INSTALLED_UPDATE:I

.field public static UNINSTALLED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/adi/collie/util/ApkUtil;->INSTALLED:I

    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/adi/collie/util/ApkUtil;->UNINSTALLED:I

    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/adi/collie/util/ApkUtil;->INSTALLED_UPDATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 108
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v0

    .line 109
    .restart local v0       #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 27
    const/4 v4, 0x0

    .line 29
    .local v4, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 31
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 32
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 33
    const/4 v5, 0x0

    .line 41
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v5

    .line 35
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_0
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    move-object v5, v4

    .line 41
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 38
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public static hasExternalStorage()Z
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static installedType(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "versionCode"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 87
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, pakageinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    sget v5, Lcom/alibaba/adi/collie/util/ApkUtil;->UNINSTALLED:I

    :goto_0
    return v5

    .line 88
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 89
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 90
    .local v2, pi_packageName:Ljava/lang/String;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 92
    .local v3, pi_versionCode:I
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    if-ne p2, v3, :cond_2

    .line 94
    sget v5, Lcom/alibaba/adi/collie/util/ApkUtil;->INSTALLED:I

    goto :goto_0

    .line 95
    :cond_2
    if-le p2, v3, :cond_0

    .line 96
    sget v5, Lcom/alibaba/adi/collie/util/ApkUtil;->INSTALLED_UPDATE:I

    goto :goto_0
.end method

.method public static isInstallOnSDCard(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 59
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/CoreApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 64
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 65
    const/4 v3, 0x1

    .line 71
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
