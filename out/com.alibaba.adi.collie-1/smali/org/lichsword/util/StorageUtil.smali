.class public Lorg/lichsword/util/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field private static final HAS_PHONE_STARAGE:Z

.field private static sGetPhoneStorageDirectoryMethod:Ljava/lang/reflect/Method;

.field private static sGtPhoneStorageStateMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    .local v1, hasPhoneStorage:Z
    :try_start_0
    const-class v0, Landroid/os/Environment;

    .line 19
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/os/Environment;>;"
    const-string v2, "getPhoneStorageDirectory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 18
    sput-object v2, Lorg/lichsword/util/StorageUtil;->sGetPhoneStorageDirectoryMethod:Ljava/lang/reflect/Method;

    .line 20
    sget-object v2, Lorg/lichsword/util/StorageUtil;->sGetPhoneStorageDirectoryMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 23
    const-string v2, "getPhoneStorageState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 22
    sput-object v2, Lorg/lichsword/util/StorageUtil;->sGtPhoneStorageStateMethod:Ljava/lang/reflect/Method;

    .line 24
    sget-object v2, Lorg/lichsword/util/StorageUtil;->sGtPhoneStorageStateMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/4 v1, 0x1

    .line 29
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/os/Environment;>;"
    :goto_0
    sput-boolean v1, Lorg/lichsword/util/StorageUtil;->HAS_PHONE_STARAGE:Z

    .line 30
    return-void

    .line 26
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, dir:Ljava/io/File;
    sget-boolean v1, Lorg/lichsword/util/StorageUtil;->HAS_PHONE_STARAGE:Z

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "removed"

    .line 39
    invoke-static {}, Lorg/lichsword/util/StorageUtil;->getExternalStorageStateInternal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lorg/lichsword/util/StorageUtil;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    const-string v0, "removed"

    .line 55
    .local v0, state:Ljava/lang/String;
    sget-boolean v1, Lorg/lichsword/util/StorageUtil;->HAS_PHONE_STARAGE:Z

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "removed"

    .line 57
    invoke-static {}, Lorg/lichsword/util/StorageUtil;->getExternalStorageStateInternal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Lorg/lichsword/util/StorageUtil;->getPhoneStorageStateInternal()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExternalStorageStateInternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    :try_start_0
    sget-boolean v0, Lorg/lichsword/util/StorageUtil;->HAS_PHONE_STARAGE:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lorg/lichsword/util/StorageUtil;->sGetPhoneStorageDirectoryMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 89
    goto :goto_0
.end method

.method private static getPhoneStorageStateInternal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    :try_start_0
    sget-boolean v0, Lorg/lichsword/util/StorageUtil;->HAS_PHONE_STARAGE:Z

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lorg/lichsword/util/StorageUtil;->sGtPhoneStorageStateMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    :cond_0
    const-string v0, "removed"

    goto :goto_0
.end method
