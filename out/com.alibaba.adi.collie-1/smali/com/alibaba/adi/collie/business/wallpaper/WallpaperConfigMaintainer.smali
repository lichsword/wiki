.class Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;
.super Ljava/lang/Object;
.source "WallpaperConfigMaintainer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperManagerX"


# instance fields
.field private final _lock_usedWallpaperIterator_:Ljava/lang/Object;

.field private mUsedWallpaperIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperConfigIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperConfigSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWallpaperConfigStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->_lock_usedWallpaperIterator_:Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/DbManager;->getWallpaperTable()Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    .line 31
    return-void
.end method

.method private initConfigMap()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigSourceMap:Ljava/util/Map;

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    .line 50
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 55
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-lt v2, v4, :cond_1

    .line 58
    return-void

    .line 52
    :cond_0
    aget-object v0, v4, v3

    .line 53
    .local v0, source:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigSourceMap:Ljava/util/Map;

    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v0           #source:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;
    :cond_1
    aget-object v1, v3, v2

    .line 56
    .local v1, status:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private syncMapsOnAdd(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 3
    .parameter "configItem"

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigSourceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private syncMapsOnDelete(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigSourceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    return-void
.end method

.method private syncMapsOnSetStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V
    .locals 1
    .parameter "item"
    .parameter "oldStatus"
    .parameter "newStatus"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public add([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 7
    .parameter "items"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, isAdded:Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->updateUsedWallpaperIterator()V

    .line 84
    .end local v1           #isAdded:Z
    :cond_0
    return-void

    .line 71
    .restart local v1       #isAdded:Z
    :cond_1
    aget-object v0, p1, v2

    .line 72
    .local v0, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 73
    const-string v4, "WallpaperManagerX"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add(): adding wallpaper "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-virtual {v4, v0}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->insertWallpaperConfigItem(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->syncMapsOnAdd(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 76
    const/4 v1, 0x1

    .line 71
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public delete([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 10
    .parameter "configItems"

    .prologue
    const/4 v4, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, isDeleted:Z
    array-length v5, p1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->updateUsedWallpaperIterator()V

    .line 109
    .end local v0           #isDeleted:Z
    :cond_0
    return-void

    .line 89
    .restart local v0       #isDeleted:Z
    :cond_1
    aget-object v1, p1, v3

    .line 90
    .local v1, item:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 91
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 92
    .local v2, realConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-nez v2, :cond_3

    .line 93
    const-string v6, "WallpaperManagerX"

    const-string v7, "unable to find WallpaperConfigItem of image path %s in Maintainer, skipping..."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 93
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v2           #realConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .restart local v2       #realConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_3
    const-string v6, "WallpaperManagerX"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete(): deleting wallpaper "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->deleteWallpaperConfigItem(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->syncMapsOnDelete(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getItems(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 2
    .parameter "source"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigSourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    return-object v0
.end method

.method public getItems(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 2
    .parameter "status"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    return-object v0
.end method

.method public getUsedWallpaperIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->_lock_usedWallpaperIterator_:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mUsedWallpaperIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->updateUsedWallpaperIterator()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mUsedWallpaperIterator:Ljava/util/Iterator;

    monitor-exit v1

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parse()V
    .locals 6

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->initConfigMap()V

    .line 35
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->getWallpaperConfigItems()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v1

    .line 36
    .local v1, configItems:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v1, :cond_0

    .line 37
    array-length v4, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 45
    :cond_0
    return-void

    .line 37
    :cond_1
    aget-object v0, v1, v3

    .line 38
    .local v0, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigSourceMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method public setBlurPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "imagePath"
    .parameter "blurPath"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string v0, "WallpaperManagerX"

    const-string v1, "setBlurPath(): blurPath of %s is %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->updateWallpaperConfigItemBlurPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v0, p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setBlurPath(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setIconPath(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "WallpaperManagerX"

    const-string v2, "setIconPath(): iconPath of %s is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->updateWallpaperConfigItemIconPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 153
    .local v0, itemInIndex:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    .line 158
    .end local v0           #itemInIndex:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_0
    return-void
.end method

.method public setStatus([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V
    .locals 12
    .parameter "configItems"
    .parameter "status"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    array-length v6, p1

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->updateUsedWallpaperIterator()V

    .line 134
    :cond_0
    return-void

    .line 113
    :cond_1
    aget-object v0, p1, v4

    .line 114
    .local v0, item:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 113
    :cond_2
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 118
    :cond_3
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 119
    .local v2, realConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-nez v2, :cond_4

    .line 120
    const-string v3, "WallpaperManagerX"

    const-string v7, "unable to find WallpaperConfigItem of image path %s in Maintainer, skipping..."

    new-array v8, v11, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 120
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v1

    .line 125
    .local v1, oldStatus:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;
    const-string v3, "WallpaperManagerX"

    const-string v7, "setStatus(): set %s %s --> %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperTable:Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, p2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->updateWallpaperConfigItemStatus(Ljava/lang/String;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 127
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigIndexMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v3, p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 129
    invoke-direct {p0, v2, v1, p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->syncMapsOnSetStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    goto :goto_1
.end method

.method public updateUsedWallpaperIterator()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->_lock_usedWallpaperIterator_:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mWallpaperConfigStatusMap:Ljava/util/Map;

    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->mUsedWallpaperIterator:Ljava/util/Iterator;

    .line 171
    monitor-exit v1

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
