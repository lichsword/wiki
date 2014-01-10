.class public Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;,
        Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field public mCrop:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

.field private mFinishCropBitmap:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

.field mRunFaceDetection:Ljava/lang/Runnable;

.field public mSaving:Z

.field public mWaitingToPick:Z

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;)V
    .locals 2
    .parameter "context"
    .parameter "imageView"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$1;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->setCropImage(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)V

    .line 42
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenWidth:I

    .line 43
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sScreenSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenHeight:I

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->screenWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mFinishCropBitmap:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private onSaveClicked(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bm"

    .prologue
    const/4 v7, 0x0

    .line 112
    iget-boolean v6, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mSaving:Z

    if-eqz v6, :cond_1

    .line 134
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 115
    .restart local p1
    :cond_1
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    if-eqz v6, :cond_0

    .line 119
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mSaving:Z

    .line 121
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 123
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 124
    .local v5, width:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 128
    .local v3, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    .local v1, croppedImage:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    .local v2, dstRect:Landroid/graphics/Rect;
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v4, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p1, v1

    .line 134
    goto :goto_0
.end method

.method private showProgressDialog(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3
    .parameter "msg"
    .parameter "job"
    .parameter "handler"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 140
    .local v0, progress:Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;Landroid/app/ProgressDialog;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$2;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)V

    .line 84
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->showProgressDialog(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public crop(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->startFaceDetection()V

    .line 53
    return-void
.end method

.method public cropAndSave(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bm"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->onSaveClicked(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    return-object v0
.end method

.method public cropCancel()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->invalidate()V

    .line 105
    return-void
.end method

.method public setFinishCropBitmap(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;)V
    .locals 0
    .parameter "fcb"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mFinishCropBitmap:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;

    .line 317
    return-void
.end method
