.class public Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;
.super Ljava/lang/Object;
.source "UserTrackAccountPersistence.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    const-string v0, "usertrack_udid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadUdid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 32
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    .line 33
    const-string v2, "UserTrackAccountPersistence.loadUdid() can not be invoked on main thread"

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Lcom/taobao/statistic/core/DeviceInfo;->getDevice(Landroid/content/Context;)Lcom/taobao/statistic/core/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/Device;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, udid:Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->setUdid(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/alibaba/adi/collie/util/UninstallObserver;->writeParamFile()V

    .line 38
    return-object v0
.end method

.method public static setUdid(Ljava/lang/String;)V
    .locals 1
    .parameter "udid"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    const-string v0, "usertrack_udid"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method
