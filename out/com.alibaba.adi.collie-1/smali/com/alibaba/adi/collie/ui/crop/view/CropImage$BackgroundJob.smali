.class Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundJob"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mJob:Ljava/lang/Runnable;

.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;Landroid/app/ProgressDialog;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "progress"
    .parameter "job"
    .parameter "handler"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;

    .line 283
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 284
    iput-object p4, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 285
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;-><init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    throw v0
.end method
