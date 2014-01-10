.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;
.super Ljava/lang/Object;
.source "WallpaperUiCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;,
        Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus:[I

.field private static sInstance:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;


# instance fields
.field private mCachedWallpaperConfigItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWallpaperChangeListener:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;

.field private mOwner:Landroid/content/Context;

.field private mUsedWallpapers:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->values()[Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->sInstance:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->sInstance:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->sInstance:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->sInstance:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCachedWallpaper(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 4
    .parameter "configItem"

    .prologue
    const/4 v3, 0x0

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 189
    .local v0, cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 191
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    .line 194
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mOnWallpaperChangeListener:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mOnWallpaperChangeListener:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    invoke-interface {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;->onSelectNumberChange(II)V

    .line 198
    .end local v0           #cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_0
    return-void
.end method

.method public changeStatus(ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)V
    .locals 7
    .parameter "index"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;,
            Lcom/alibaba/adi/collie/ui/wallpaperx/exp/DeleteTooManyException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 79
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "WallpaperConfigItem passed is not cached in WallpaperUiCache"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 84
    .local v0, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    const-string v1, "WallpaperManagerX"

    .line 85
    const-string v2, "%s, set status to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_2
    :goto_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq p2, v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mOnWallpaperChangeListener:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mOnWallpaperChangeListener:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    invoke-interface {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;->onSelectNumberChange(II)V

    .line 125
    :cond_3
    return-void

    .line 88
    :pswitch_0
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    goto :goto_0

    .line 93
    :pswitch_1
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    if-gt v1, v6, :cond_4

    .line 94
    new-instance v1, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;-><init>()V

    throw v1

    .line 96
    :cond_4
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->AVAILABLE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getLeftLength()I

    move-result v1

    if-le v1, v6, :cond_7

    .line 102
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq v1, v2, :cond_5

    .line 103
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    if-ne v1, v2, :cond_6

    .line 104
    :cond_5
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_7
    new-instance v1, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/DeleteTooManyException;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/DeleteTooManyException;-><init>()V

    throw v1

    .line 112
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    sget-object v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    if-ne v1, v2, :cond_2

    .line 114
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public geCachedStatus(I)Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    .locals 1
    .parameter "index"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    return-object v0
.end method

.method public getCachedWallpapers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    return-object v0
.end method

.method public getChangedWallpapers()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;",
            "Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v1, changedWallpaperMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 182
    return-object v1

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    .line 177
    .local v0, cachedStatus:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq v0, v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 179
    .local v2, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v2           #configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getDisplayWallpaperItems(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "isDelMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, displayWalpaperItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;>;"
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 169
    return-object v0

    .line 165
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->geCachedStatus(I)Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq v3, v4, :cond_1

    .line 166
    new-instance v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-direct {v4, v3, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;-><init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLeftLength()I
    .locals 5

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, tmp:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, len:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 150
    return v2

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq v3, v4, :cond_1

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTargetUpDatesStatus(I)Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    .locals 1
    .parameter "index"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    return-object v0
.end method

.method public getUsedWallpaperNum()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    return v0
.end method

.method public isChanged()Z
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, len:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 137
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq v2, v3, :cond_1

    .line 134
    const/4 v2, 0x1

    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refreshCache()V
    .locals 6

    .prologue
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    .line 40
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers()Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, configItemList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    .line 51
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    .line 52
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 58
    return-void

    .line 45
    .end local v3           #i:I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 46
    .local v0, ci:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 47
    .local v1, cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v0           #ci:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .end local v1           #cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .restart local v3       #i:I
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    sget-object v5, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    if-ne v4, v5, :cond_2

    .line 55
    iget v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public selectRandomly()V
    .locals 7

    .prologue
    .line 209
    iget v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mUsedWallpapers:I

    if-gtz v4, :cond_0

    .line 210
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 223
    .end local v3           #i:I
    :cond_0
    :goto_1
    return-void

    .line 211
    .restart local v3       #i:I
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mCachedWallpaperConfigItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 212
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mIsUpdates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    .line 213
    .local v0, cachedStatus:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-eq v0, v4, :cond_2

    .line 215
    :try_start_0
    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->changeStatus(ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WallpaperManagerX"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exception caught in selectRandomly() "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setOnWallpaperChangeListener(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->mOnWallpaperChangeListener:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;

    .line 202
    return-void
.end method
