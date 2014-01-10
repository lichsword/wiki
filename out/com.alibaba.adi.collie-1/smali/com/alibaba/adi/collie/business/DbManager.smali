.class public Lcom/alibaba/adi/collie/business/DbManager;
.super Ljava/lang/Object;
.source "DbManager.java"


# static fields
.field private static instance:Lcom/alibaba/adi/collie/business/DbManager;


# instance fields
.field private pushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

.field private pushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

.field private pushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

.field private wallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-static {}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getInstance()Lcom/alibaba/adi/collie/util/db/DbHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->wallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    .line 21
    new-instance v0, Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-static {}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getInstance()Lcom/alibaba/adi/collie/util/db/DbHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->pushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    .line 22
    new-instance v0, Lcom/alibaba/adi/collie/business/push/PushShownTable;

    invoke-static {}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getInstance()Lcom/alibaba/adi/collie/util/db/DbHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushShownTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->pushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    .line 23
    new-instance v0, Lcom/alibaba/adi/collie/business/push/PushIdTable;

    invoke-static {}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getInstance()Lcom/alibaba/adi/collie/util/db/DbHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushIdTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->pushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/business/DbManager;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/adi/collie/business/DbManager;->instance:Lcom/alibaba/adi/collie/business/DbManager;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/alibaba/adi/collie/business/DbManager;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/DbManager;->instance:Lcom/alibaba/adi/collie/business/DbManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/adi/collie/business/DbManager;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/DbManager;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/DbManager;->instance:Lcom/alibaba/adi/collie/business/DbManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/DbManager;->instance:Lcom/alibaba/adi/collie/business/DbManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPushIdTable()Lcom/alibaba/adi/collie/business/push/PushIdTable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->pushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

    return-object v0
.end method

.method public getPushShownTable()Lcom/alibaba/adi/collie/business/push/PushShownTable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->pushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    return-object v0
.end method

.method public getPushTable()Lcom/alibaba/adi/collie/business/push/PushTable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->pushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    return-object v0
.end method

.method public getWallpaperTable()Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/DbManager;->wallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    return-object v0
.end method
