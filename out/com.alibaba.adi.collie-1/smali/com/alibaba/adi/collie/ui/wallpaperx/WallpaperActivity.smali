.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "WallpaperActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;
.implements Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;
    }
.end annotation


# static fields
.field private static final REQ_CODE_CROP_IMG:I = 0x65

.field private static final REQ_CODE_PICK_IMG:I = 0x64

.field private static final REQ_CODE_VIEW_DEL:I = 0x67

.field private static final REQ_CODE_VIEW_IMG:I = 0x66

.field public static final TAG:Ljava/lang/String; = "WallpaperManagerX"

.field public static final mCroppedImageTmpFile:Ljava/io/File;


# instance fields
.field private isTouchSeeked:Z

.field private mApplyChangeAsyncTask:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;

.field private mBtnGoMarket:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPopupDialogBtn:Landroid/widget/ImageView;

.field private mPopupDialogWindow:Landroid/widget/PopupWindow;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStatusControlLayout:Landroid/view/ViewGroup;

.field private mTopNavLayout:Landroid/view/ViewGroup;

.field private selectedText:Landroid/widget/TextView;

.field private targetPageNum:I

.field private viewPagerPageSum:I

.field private wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

.field private wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

.field private wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wallpaperx"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "croppedImage.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;ILjava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->scrollToPage(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I

    return v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->isTouchSeeked:Z

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->viewPagerPageSum:I

    return v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I

    return-void
.end method

.method private applyChanges()V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mApplyChangeAsyncTask:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mApplyChangeAsyncTask:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;

    .line 249
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mApplyChangeAsyncTask:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->finish()V

    goto :goto_0
.end method

.method private cropImage(Landroid/net/Uri;)V
    .locals 11
    .parameter "imageUri"

    .prologue
    const/16 v10, 0x65

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 428
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    const-string v0, "WallpaperManagerX"

    const-string v1, "need to create dir for cropping image"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    const-string v0, "WallpaperManagerX"

    const-string v1, "mkdirs for cropping image failed"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 441
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v9

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 444
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, path:Ljava/lang/String;
    invoke-static {v8}, Lcom/alibaba/adi/collie/ui/crop/view/FileType;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 450
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v7, intentCrop:Landroid/content/Intent;
    const-string v0, "path"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v0, "save_path"

    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0, v7, v10}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 463
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #intentCrop:Landroid/content/Intent;
    .end local v8           #path:Ljava/lang/String;
    :goto_1
    const v0, 0x7f040013

    const v1, 0x7f040014

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 455
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 458
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #path:Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .restart local v7       #intentCrop:Landroid/content/Intent;
    const-string v0, "path"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v0, "save_path"

    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v7, v10}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private initContentView()V
    .locals 2

    .prologue
    .line 154
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    .line 155
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    .line 156
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->selectedText:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mBtnGoMarket:Landroid/widget/Button;

    .line 158
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogBtn:Landroid/widget/ImageView;

    .line 159
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getUsedWallpaperNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->setSelectNumber(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setDefaultPagerIndex(I)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    const/high16 v1, 0x4100

    invoke-static {p0, v1}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setPageMargin(I)V

    .line 163
    return-void
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 182
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 217
    return-void
.end method

.method private initPopupDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030098

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, popupView:Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    .line 147
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 151
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->refreshData(I)V

    .line 229
    return-void
.end method

.method private refreshData(I)V
    .locals 2
    .parameter "targetPage"

    .prologue
    .line 220
    iput p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I

    .line 221
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->notifyDataSetChanged()V

    .line 222
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->scrollToPage(ILjava/lang/Boolean;)V

    .line 223
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getUsedWallpaperNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->setSelectNumber(I)V

    .line 224
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->setSeekBarVisible()V

    .line 225
    return-void
.end method

.method private scrollToPage(ILjava/lang/Boolean;)V
    .locals 2
    .parameter "pageNum"
    .parameter "isNeedPagerChange"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getPageSum()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->viewPagerPageSum:I

    .line 233
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->viewPagerPageSum:I

    invoke-static {v0, p1, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->setSeekBarProcessToPage(Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;II)V

    .line 235
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setCurrentItem(I)V

    .line 238
    :cond_0
    return-void
.end method

.method private setSeekBarVisible()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;->getPageSum()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->viewPagerPageSum:I

    .line 136
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->viewPagerPageSum:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setVisibility(I)V

    goto :goto_0
.end method

.method private useViewIndexGetTargetPage(I)I
    .locals 3
    .parameter "viewIndex"

    .prologue
    .line 420
    div-int/lit8 v2, p1, 0x9

    rem-int/lit8 v1, p1, 0x9

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 421
    .local v0, targetPage:I
    if-nez p1, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 424
    :cond_0
    return v0

    .line 420
    .end local v0           #targetPage:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 382
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 383
    .local v1, selectedImgUri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->cropImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    .end local v1           #selectedImgUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 390
    :pswitch_1
    if-ne p2, v3, :cond_3

    .line 391
    sget-object v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    .line 393
    sget-object v5, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->AVAILABLE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    .line 392
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->addWallpapers(Ljava/io/File;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    move-result-object v0

    .line 394
    .local v0, addedWallpaper:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-nez v0, :cond_1

    .line 395
    const-string v3, "WallpaperManagerX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add wallpaper from file failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mCroppedImageTmpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->addCachedWallpaper(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 398
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->refreshData()V

    goto :goto_0

    .line 401
    .end local v0           #addedWallpaper:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_2
    const v3, 0x7f0a0150

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 404
    :cond_3
    const-string v3, "WallpaperManagerX"

    const-string v4, "REQ_CODE_CROP_IMG: resultCode is not RESULT_OK, not adding wallpaper"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :pswitch_2
    const-string v3, "viewIndex"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->useViewIndexGetTargetPage(I)I

    move-result v2

    .line 409
    .local v2, targetPage:I
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->refreshData(I)V

    .line 410
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->setOnWallpaperChangeListener(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;)V

    goto :goto_0

    .line 413
    .end local v2           #targetPage:I
    :pswitch_3
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->refreshData()V

    .line 414
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->setOnWallpaperChangeListener(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;)V

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->applyChanges()V

    .line 264
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 271
    :sswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->applyChanges()V

    goto :goto_0

    .line 274
    :sswitch_1
    const-string v3, "WallpaperMoreOperation"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogBtn:Landroid/widget/ImageView;

    const/16 v5, 0x35

    const/high16 v6, 0x4100

    invoke-static {p0, v6}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42e6

    invoke-static {p0, v7}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 284
    :sswitch_2
    const-string v3, "http://suopingbao.m.taobao.com/?c=wallpaper&w=%d&h=%d&dpi=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 285
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 286
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 287
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getDensityDpi(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 284
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, url:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/alibaba/adi/collie/util/Tools;->startBrowserPreferUcweb(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v2           #url:Ljava/lang/String;
    :sswitch_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, externalStorageState:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    const v3, 0x7f0a0137

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 298
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    const v3, 0x7f040013

    const v4, 0x7f040014

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->overridePendingTransition(II)V

    .line 302
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 305
    .end local v0           #externalStorageState:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperDelActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v3, 0x67

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    const/high16 v3, 0x7f04

    const v4, 0x7f040002

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->overridePendingTransition(II)V

    .line 308
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPopupDialogWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f08009e -> :sswitch_2
        0x7f0800a1 -> :sswitch_1
        0x7f0801e7 -> :sswitch_3
        0x7f0801e8 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 110
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->setContentView(I)V

    .line 111
    iput-object p0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->refreshCache()V

    .line 118
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->initPopupDialog()V

    .line 119
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->initContentView()V

    .line 121
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$gridItemClickListener;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    .line 122
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsAdapter:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 123
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->targetPageNum:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->scrollToPage(ILjava/lang/Boolean;)V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->initListeners()V

    .line 126
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperPanelsContainer:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->wallpaperSeekbar:Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 128
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->setOnWallpaperChangeListener(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$OnWallpaperChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mBtnGoMarket:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->setSeekBarVisible()V

    .line 131
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onDestroy()V

    .line 105
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->getInstance()Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;->refreshCache()V

    .line 106
    return-void
.end method

.method public onGridItemClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;

    .line 316
    .local v1, curTag:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 328
    .end local p1
    :goto_0
    return-void

    .line 318
    .restart local p1
    :pswitch_0
    const-string v3, "PreviewWallpaper"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 319
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "targetIndex"

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->getIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const/16 v3, 0x66

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 324
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->getBufferIndex()I

    move-result v0

    .line 325
    .local v0, curIndex:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .end local p1
    invoke-static {v3, p1, v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->checkBoxClickCallback(Landroid/content/Context;Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;I)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x7f080114
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "WallpaperManagerX"

    const-string v1, "WallpaperActivity.onPause()"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 91
    const-string v0, "WallpaperManagerX"

    const-string v1, "WallpaperActivity.onResume()"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onSelectNumberChange(II)V
    .locals 0
    .parameter "totalNum"
    .parameter "usedNum"

    .prologue
    .line 258
    invoke-virtual {p0, p2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->setSelectNumber(I)V

    .line 259
    return-void
.end method

.method public setSelectNumber(I)V
    .locals 5
    .parameter "number"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->selectedText:Landroid/widget/TextView;

    const v1, 0x7f0a013e

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method
