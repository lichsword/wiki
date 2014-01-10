.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;
.super Ljava/lang/Object;
.source "WallpaperUiEventHandler.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus:[I

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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;
    .locals 3
    .parameter "context"
    .parameter "curIndex"
    .parameter "targetStatus"

    .prologue
    const/4 v2, 0x0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->changeStatus(ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)V

    .line 56
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/adi/collie/ui/wallpaperx/exp/DeleteTooManyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;
    const v1, 0x7f0a013a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 60
    .end local v0           #e:Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, e:Lcom/alibaba/adi/collie/ui/wallpaperx/exp/DeleteTooManyException;
    const v1, 0x7f0a013b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/DeleteTooManyException;->printStackTrace()V

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static checkBoxClickCallback(Landroid/content/Context;Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;I)V
    .locals 2
    .parameter "context"
    .parameter "checkbox"
    .parameter "curIndex"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {p0, p2, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1, v1, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(ZZ)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {p0, p2, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->changeStatus(Landroid/content/Context;ILcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(ZZ)V

    goto :goto_0
.end method

.method public static getSeekBarCurProcessTargetPage(Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;I)I
    .locals 4
    .parameter "mSeekBarHasTip"
    .parameter "pageSum"

    .prologue
    .line 42
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, -0x2

    if-lez v2, :cond_1

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v0, v2, -0x2

    .line 43
    .local v0, divideNum:I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    div-int/2addr v3, v0

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 44
    .local v1, targetPageIndex:I
    if-le v1, p1, :cond_0

    .line 45
    move v1, p1

    .line 48
    :cond_0
    return v1

    .line 42
    .end local v0           #divideNum:I
    .end local v1           #targetPageIndex:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static saveChangesToDb()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 69
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getUsedWallpaperNum()I

    move-result v4

    .line 70
    .local v4, selectedNum:I
    const/4 v7, 0x1

    if-ge v4, v7, :cond_0

    .line 71
    new-instance v7, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;

    invoke-direct {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;-><init>()V

    throw v7

    .line 75
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getChangedWallpapers()Ljava/util/HashMap;

    move-result-object v1

    .line 77
    .local v1, changedWallpaperMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v6, usedWallpapers:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v5, unusedWallpapers:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, delWallpapers:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 100
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 101
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v8

    .line 102
    new-array v7, v11, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 103
    sget-object v9, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    .line 101
    invoke-virtual {v8, v7, v9}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setStatus([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 106
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 107
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v8

    .line 108
    new-array v7, v11, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 109
    sget-object v9, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->AVAILABLE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    .line 107
    invoke-virtual {v8, v7, v9}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setStatus([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 113
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 114
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v8

    .line 115
    new-array v7, v11, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 114
    invoke-virtual {v8, v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->deleteWallpapers([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 118
    :cond_3
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->refreshCache()V

    .line 119
    return-void

    .line 81
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 82
    .local v2, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    .line 83
    .local v0, cachedStatus:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$wallpaperx$WallpaperUiCache$CachedStatus()[I

    move-result-object v8

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    const-string v8, "WallpaperManagerX"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "will set wallpaper to USED: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 89
    :pswitch_1
    const-string v8, "WallpaperManagerX"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "will set wallpaper to NOT-USED: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 93
    :pswitch_2
    const-string v8, "WallpaperManagerX"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "will delete wallpaper: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setSeekBarProcessToPage(Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;II)V
    .locals 2
    .parameter "mSeekBarHasTip"
    .parameter "pageIndex"
    .parameter "pageSum"

    .prologue
    .line 36
    add-int/lit8 v1, p2, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v0, p2, -0x1

    .line 37
    .local v0, divideNum:I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setProgressWithAnim(I)V

    .line 38
    return-void

    .line 36
    .end local v0           #divideNum:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
