.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenScan;
.super Ljava/lang/Object;
.source "ActionOpenScan.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/alibaba/adi/collie/util/FlashLight;->getInstance()Lcom/alibaba/adi/collie/util/FlashLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/util/FlashLight;->close()V

    .line 16
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    .line 17
    const-class v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method
