.class Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->access$0(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 302
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->access$1(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;Landroid/app/ProgressDialog;)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mFinishCropBitmap:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$6(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob$1;->this$1:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->this$0:Lcom/alibaba/adi/collie/ui/crop/view/CropImage;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;->access$2(Lcom/alibaba/adi/collie/ui/crop/view/CropImage$BackgroundJob;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->mFinishCropBitmap:Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage;->access$6(Lcom/alibaba/adi/collie/ui/crop/view/CropImage;)Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/crop/view/CropImage$finishCropBitmap;->finishCB()V

    .line 306
    :cond_0
    return-void
.end method
