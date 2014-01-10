.class public Lcom/alibaba/adi/collie/util/db/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "adi.collie.db"

.field public static final DB_VER:I = 0x2

.field private static sInstance:Lcom/alibaba/adi/collie/util/db/DbHelper;


# instance fields
.field private mTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/util/db/DbTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "adi.collie.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    return-void
.end method

.method private collectTables()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/DbManager;->getWallpaperTable()Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/DbManager;->getPushTable()Lcom/alibaba/adi/collie/business/push/PushTable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/DbManager;->getPushShownTable()Lcom/alibaba/adi/collie/business/push/PushShownTable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/DbManager;->getPushIdTable()Lcom/alibaba/adi/collie/business/push/PushIdTable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/util/db/DbHelper;
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/adi/collie/util/db/DbHelper;->sInstance:Lcom/alibaba/adi/collie/util/db/DbHelper;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/alibaba/adi/collie/util/db/DbHelper;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/util/db/DbHelper;->sInstance:Lcom/alibaba/adi/collie/util/db/DbHelper;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/adi/collie/util/db/DbHelper;

    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/util/db/DbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/adi/collie/util/db/DbHelper;->sInstance:Lcom/alibaba/adi/collie/util/db/DbHelper;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/util/db/DbHelper;->sInstance:Lcom/alibaba/adi/collie/util/db/DbHelper;

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
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "sqLiteDatabase"

    .prologue
    .line 51
    const-string v2, "xhh"

    const-string v3, "table create"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/db/DbHelper;->collectTables()V

    .line 53
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    return-void

    .line 53
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/util/db/DbTable;

    .line 54
    .local v1, table:Lcom/alibaba/adi/collie/util/db/DbTable;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/db/DbTable;->getCreateSql()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, sql:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, p1}, Lcom/alibaba/adi/collie/util/db/DbTable;->onTableCreated(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "sqLiteDatabase"
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 64
    const-string v2, "xhh"

    const-string v3, "table upgrade"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/db/DbHelper;->collectTables()V

    .line 66
    iget-object v2, p0, Lcom/alibaba/adi/collie/util/db/DbHelper;->mTables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    return-void

    .line 66
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/util/db/DbTable;

    .line 67
    .local v1, table:Lcom/alibaba/adi/collie/util/db/DbTable;
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/adi/collie/util/db/DbTable;->getUpdateSql(II)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, sql:Ljava/lang/String;
    const-string v3, "xhh"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "table "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
