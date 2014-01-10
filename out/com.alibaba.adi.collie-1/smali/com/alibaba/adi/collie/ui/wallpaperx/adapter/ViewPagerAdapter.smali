.class public Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# static fields
.field private static GRID_VIEW_ITEM_LENGTH:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

.field private mIsDelMode:Z

.field private mPanel:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;

.field private mgridItemClickListener:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;

.field private totalPageNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x9

    sput v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->GRID_VIEW_ITEM_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "isDelMode"
    .parameter "mItemClickListener"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mIsDelMode:Z

    .line 39
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mIsDelMode:Z

    .line 41
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mgridItemClickListener:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;

    .line 42
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->initDisplayConfigItems()V

    .line 43
    return-void
.end method

.method private getGridViewItemsLength(I)I
    .locals 3
    .parameter "targetPage"

    .prologue
    .line 132
    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->totalPageNum:I

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 133
    sget v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->GRID_VIEW_ITEM_LENGTH:I

    .line 138
    .local v0, itemLen:I
    :goto_0
    return v0

    .line 136
    .end local v0           #itemLen:I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->GRID_VIEW_ITEM_LENGTH:I

    mul-int/2addr v2, p1

    sub-int v0, v1, v2

    .restart local v0       #itemLen:I
    goto :goto_0
.end method

.method private getPanelItems(I)[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;
    .locals 5
    .parameter "targetPage"

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getGridViewItemsLength(I)I

    move-result v0

    .line 143
    .local v0, itemLen:I
    new-array v1, v0, [Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    .line 144
    .local v1, tempItems:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    new-array v3, v4, [Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    sget v3, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->GRID_VIEW_ITEM_LENGTH:I

    mul-int/2addr v3, p1

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    return-object v1
.end method

.method private initDisplayConfigItems()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mIsDelMode:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getDisplayWallpaperItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getPageSum()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->totalPageNum:I

    .line 48
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 9
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 63
    move-object v6, p3

    check-cast v6, Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    instance-of v6, p3, Landroid/widget/TableLayout;

    if-eqz v6, :cond_0

    move-object v0, p3

    .line 65
    check-cast v0, Landroid/widget/TableLayout;

    .line 66
    .local v0, gridView:Landroid/widget/TableLayout;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-le v6, v7, :cond_1

    .line 67
    const-string v6, "WallpaperManagerX"

    const-string v7, "ViewPagerAdapter.destroyItem(): API level > 10, no need to call recycle()"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0           #gridView:Landroid/widget/TableLayout;
    :cond_0
    return-void

    .line 71
    .restart local v0       #gridView:Landroid/widget/TableLayout;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, itemView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;

    if-eqz v6, :cond_3

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;

    .line 77
    .local v5, subViewHolder:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 78
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    .line 79
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 80
    .local v3, itemPicBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 81
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    if-eqz v6, :cond_2

    .line 82
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isBmpLoaded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    const-string v6, "WallpaperManagerX"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "recycling bitmap of item picture"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    .end local v3           #itemPicBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageMask:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 91
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageMask:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    .line 92
    iget-object v6, v5, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;->imageMask:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    .local v2, itemMaskBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 94
    const-string v6, "WallpaperManagerX"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "recycling bitmap of item mask "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    .end local v2           #itemMaskBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #subViewHolder:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$SubViewHolder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->totalPageNum:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 107
    const/4 v0, -0x2

    return v0
.end method

.method public getPageSum()I
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->GRID_VIEW_ITEM_LENGTH:I

    div-int v1, v0, v1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v2, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->GRID_VIEW_ITEM_LENGTH:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mPanel:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;

    .line 113
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getPanelItems(I)[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mIsDelMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;-><init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;ILjava/lang/Boolean;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mGridViewAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    .line 114
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mGridViewAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mgridItemClickListener:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->setGridItemClickListener(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mPanel:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mGridViewAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mPanel:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->mPanel:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "o"

    .prologue
    .line 123
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->initDisplayConfigItems()V

    .line 53
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
