.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setCenterPushView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

.field private final synthetic val$centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;->val$centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;->val$centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->hasClicked(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 389
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setFgBitmapBlur(Z)V

    .line 378
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$4;->val$centerMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->hasClosed(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 379
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setFgBitmapBlur(Z)V

    .line 384
    return-void
.end method
