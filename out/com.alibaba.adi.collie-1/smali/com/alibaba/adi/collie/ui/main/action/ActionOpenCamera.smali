.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;
.super Ljava/lang/Object;
.source "ActionOpenCamera.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;->mActivity:Landroid/app/Activity;

    .line 15
    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 20
    sget-object v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;->TAG:Ljava/lang/String;

    const-string v2, "on camera click"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "Camera"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/alibaba/adi/collie/util/FlashLight;->getInstance()Lcom/alibaba/adi/collie/util/FlashLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/FlashLight;->close()V

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenCamera;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 28
    return-void
.end method
