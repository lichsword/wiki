.class public Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "ImageCropActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

.field private mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, path:Ljava/lang/String;
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/app/Activity;)[I

    move-result-object v1

    .line 45
    .local v1, screenSize:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    aget v3, v1, v5

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    .line 47
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 49
    new-instance v2, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mImageView:Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;-><init>(Landroid/content/Context;Lcom/alibaba/adi/collie/ui/crop/view/CropImageView;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    .line 50
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->crop(Landroid/graphics/Bitmap;)V

    .line 51
    return-void
.end method


# virtual methods
.method public finishCB()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->cropAndSave(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "save_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->finish()V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->cropCancel()V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->finish()V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->crop(Landroid/graphics/Bitmap;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->mCrop:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->setFinishCropBitmap(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7f080024
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/ImageCropActivity;->init()V

    .line 36
    return-void
.end method

.method public saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "bm"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, fos:Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 79
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 80
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 81
    .restart local p2
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p2, v2

    .line 83
    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p2, v2

    .line 86
    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 88
    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_3
    throw v2
.end method
