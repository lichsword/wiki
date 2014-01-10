.class Lorg/android/agoo/proc/ServiceProtect;
.super Ljava/lang/Object;
.source "ServiceProtect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceProtect"

.field private static volatile soResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/proc/ServiceProtect;->soResult:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasLoadSuccess()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lorg/android/agoo/proc/ServiceProtect;->soResult:Z

    return v0
.end method

.method private static native hasRted()I
.end method

.method static hasRtedp()Z
    .locals 4

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, root:I
    const/4 v1, 0x0

    .line 70
    .local v1, flag:Z
    sget-boolean v3, Lorg/android/agoo/proc/ServiceProtect;->soResult:Z

    if-eqz v3, :cond_0

    .line 72
    :try_start_0
    invoke-static {}, Lorg/android/agoo/proc/ServiceProtect;->hasRted()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 77
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 80
    :cond_1
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, ep:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "pakName"
    .parameter "comp"
    .parameter "action"
    .parameter "count"

    .prologue
    .line 41
    invoke-static {}, Lorg/android/agoo/proc/ServiceProtect;->hasRtedp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1, p2, p3, p4}, Lorg/android/agoo/proc/ServiceProtect;->startp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 44
    :cond_0
    return-void
.end method

.method static loadSo(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, result:Lorg/android/agoo/proc/SOManager$LoadSoResult;
    invoke-static {p0}, Lorg/android/agoo/proc/SOManager;->getInstance(Landroid/content/Context;)Lorg/android/agoo/proc/SOManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/proc/SOManager;->validateAndLoadCockroach()Lorg/android/agoo/proc/SOManager$LoadSoResult;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/android/agoo/proc/SOManager$LoadSoResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p0}, Lorg/android/agoo/proc/SOManager;->getInstance(Landroid/content/Context;)Lorg/android/agoo/proc/SOManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/proc/SOManager;->validateAndLoadClient()Lorg/android/agoo/proc/SOManager$LoadSoResult;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lorg/android/agoo/proc/SOManager;->getInstance(Landroid/content/Context;)Lorg/android/agoo/proc/SOManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/proc/SOManager;->validateAndLoadExeTaobao()V

    .line 35
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/android/agoo/proc/ServiceProtect;->soResult:Z

    .line 36
    return-void
.end method

.method private static native start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native startTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static startp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "pakName"
    .parameter "comp"
    .parameter "action"
    .parameter "count"

    .prologue
    .line 47
    sget-boolean v1, Lorg/android/agoo/proc/ServiceProtect;->soResult:Z

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/android/agoo/proc/ServiceProtect;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, ep:Ljava/lang/Throwable;
    const-string v1, "ServiceProtect"

    const-string v2, "startp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v0           #ep:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static native stop()V
.end method

.method static stopp()V
    .locals 2

    .prologue
    .line 58
    sget-boolean v1, Lorg/android/agoo/proc/ServiceProtect;->soResult:Z

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Lorg/android/agoo/proc/ServiceProtect;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .local v0, ep:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 61
    .end local v0           #ep:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 62
    .restart local v0       #ep:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
