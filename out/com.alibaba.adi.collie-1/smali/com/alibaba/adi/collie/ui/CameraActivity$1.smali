.class Lcom/alibaba/adi/collie/ui/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/CameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/CameraActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/CameraActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/CameraActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->access$0(Lcom/alibaba/adi/collie/ui/CameraActivity;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/CameraActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/CameraActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/CameraActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/CameraActivity;->access$0(Lcom/alibaba/adi/collie/ui/CameraActivity;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/CameraActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/CameraActivity;

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 51
    :cond_0
    return-void
.end method
