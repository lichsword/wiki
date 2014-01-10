.class public Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;,
        Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;,
        Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;,
        Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;
    }
.end annotation


# static fields
.field private static final GRID_VIEW_MAX_ITEM_LENGTH:I = 0x9

.field private static final WHAT_BMP_LOADED:I = 0x63

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private itemClickListener:Landroid/view/View$OnClickListener;

.field private mAllItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

.field private mContext:Landroid/content/Context;

.field private mCurPageIndex:I

.field public mDefaultBmp:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field public mgridItemClickListener:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;

.field private misDelMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;ILjava/lang/Boolean;)V
    .locals 1
    .parameter "context"
    .parameter "items"
    .parameter "curPageIndex"
    .parameter "isDelMode"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$1;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mAllItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    .line 50
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->misDelMode:Z

    .line 51
    iput p3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mCurPageIndex:I

    .line 53
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$2;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mCurPageIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 183
    const-class v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200fe

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    .line 183
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadBitmapAsync(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;)V
    .locals 2
    .parameter "handlerPack"

    .prologue
    .line 193
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;)V

    .line 204
    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 205
    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 119
    const-string v7, "WallpaperManagerX"

    const-string v8, "GridViewAdatper.getView(%d) on page %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mCurPageIndex:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, mItemMask:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 122
    .local v5, mItempic:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 124
    .local v3, mItemCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;
    if-nez p2, :cond_0

    .line 125
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030048

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    const v7, 0x7f080116

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #mItemMask:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 127
    .restart local v4       #mItemMask:Landroid/widget/ImageView;
    const v7, 0x7f080114

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #mItempic:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 128
    .restart local v5       #mItempic:Landroid/widget/ImageView;
    const v7, 0x7f080115

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #mItemCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;
    check-cast v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .line 129
    .restart local v3       #mItemCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;
    new-instance v7, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;

    invoke-direct {v7, p0, v5, v4, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_0
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mAllItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    array-length v7, v7

    if-lt p1, v7, :cond_1

    .line 138
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setVisibility(I)V

    .line 139
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    const v7, 0x7f020018

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :goto_1
    return-object p2

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;

    .line 132
    .local v6, viewHolder:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;
    iget-object v4, v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageMask:Landroid/widget/ImageView;

    .line 133
    iget-object v5, v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    .line 134
    iget-object v3, v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->animationCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    goto :goto_0

    .line 147
    .end local v6           #viewHolder:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setVisibility(I)V

    .line 148
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mAllItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getmWallpaperConfigItem()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v1

    .line 151
    .local v1, cur:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v7

    sget-object v8, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(ZZ)V

    .line 152
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    new-instance v7, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    invoke-direct {v7, p0, v5, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;Landroid/widget/ImageView;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    invoke-direct {p0, v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->loadBitmapAsync(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;)V

    .line 157
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v2, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mAllItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v7

    invoke-direct {v2, p0, p1, v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;II)V

    .line 163
    .local v2, curTag:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mAllItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v0

    .line 165
    .local v0, cacheIndex:I
    iget-boolean v7, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->misDelMode:Z

    if-eqz v7, :cond_2

    .line 166
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getTargetUpDatesStatus(I)Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    move-result-object v7

    sget-object v8, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    if-ne v7, v8, :cond_2

    .line 168
    const v7, 0x7f020042

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->setDelMode(Ljava/lang/Boolean;)V

    .line 173
    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setTag(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 151
    .end local v0           #cacheIndex:I
    .end local v2           #curTag:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public setGridItemClickListener(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mgridItemClickListener:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;

    .line 68
    return-void
.end method
