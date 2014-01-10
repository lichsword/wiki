.class public Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewPagerAdapter.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperSource:[I


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


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperSource()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperSource:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperSource:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getDisplayWallpaperItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 44
    move-object v2, p3

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, p3

    .line 46
    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const-string v2, "WallpaperManagerX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recycling WallpaperViewActivity image "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 65
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 70
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;

    .line 71
    .local v2, curConfigItemIndex:Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getmWallpaperConfigItem()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v1

    .line 73
    .local v1, curConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 74
    .local v0, asyncLoadImage:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$business$wallpaper$WallpaperManagerX$WallpaperSource()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    return-object v0

    .line 76
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->loadFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->loadFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "o"

    .prologue
    .line 89
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getDisplayWallpaperItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/PreviewPagerAdapter;->mDisplayItems:Ljava/util/ArrayList;

    .line 60
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method
