.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusConfirmInit()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onStatusConfirmInputError()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onStatusConfirmInputSuccess()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public onStatusConfirmLastPassword()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onStatusConfirmPasswordSuccess()V
    .locals 3

    .prologue
    .line 378
    const-string v1, "ActionOpenScanResult"

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 380
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->closeKeyGuard()V

    .line 381
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->getAction()Lcom/alibaba/adi/collie/ui/main/action/IAction;

    move-result-object v0

    .line 382
    .local v0, action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 385
    :cond_0
    return-void
.end method

.method public onStatusInit()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onStatusInitInputError()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onStatusInitInputSuccess()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method
