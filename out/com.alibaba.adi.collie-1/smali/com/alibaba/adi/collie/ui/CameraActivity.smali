.class public Lcom/alibaba/adi/collie/ui/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mHasSurface:Z

.field private mImageSnapshot:Landroid/widget/ImageView;

.field private mSnapshotBitmap:Landroid/graphics/Bitmap;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/adi/collie/ui/CameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/CameraActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/CameraActivity;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 88
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mHasSurface:Z

    .line 92
    :cond_0
    return-void
.end method

.method private initCamera()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mHasSurface:Z

    goto :goto_0
.end method

.method private recyleSnapshot()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mHasSurface:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    .line 40
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mImageSnapshot:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/CameraActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 55
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->closeCamera()V

    .line 74
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->recyleSnapshot()V

    .line 75
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "bytes"
    .parameter "camera"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 119
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 118
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, imageUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 122
    .local v2, os:Ljava/io/OutputStream;
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 123
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 124
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 126
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->recyleSnapshot()V

    .line 127
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    .line 128
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mImageSnapshot:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v2           #os:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 134
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->initCamera()V

    .line 68
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "surfaceHolder"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 109
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->initCamera()V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 103
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->closeCamera()V

    .line 114
    return-void
.end method
