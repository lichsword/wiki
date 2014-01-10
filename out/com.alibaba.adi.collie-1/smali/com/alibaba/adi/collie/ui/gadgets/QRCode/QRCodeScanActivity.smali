.class public Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;
    }
.end annotation


# static fields
.field private static final LOCK_ACTION:Ljava/lang/String; = "ActionOpenScanResult"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field expressCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
            "<",
            "Lcom/etao/kakalib/api/beans/MailTraceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

.field private mAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

.field protected mBackImageView:Landroid/widget/Button;

.field private mCameraLocate:Landroid/view/View;

.field private mCaptureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;

.field protected mContainerLayout:Landroid/view/ViewGroup;

.field protected mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

.field protected mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

.field private mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

.field mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

.field mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

.field mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

.field private mRawProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

.field productInfoCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack",
            "<",
            "Lcom/etao/kakalib/api/beans/ProductInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 200
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 317
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    .line 339
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    .line 460
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->productInfoCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 498
    new-instance v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$5;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->expressCallBack:Lcom/etao/kakalib/api/KakaLibCodeHttpRequestCallBack;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/etao/kakalib/KakaLibScanController;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    return-object v0
.end method

.method private initContentView()V
    .locals 4

    .prologue
    .line 90
    const v2, 0x7f080057

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mContainerLayout:Landroid/view/ViewGroup;

    .line 91
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mBackImageView:Landroid/widget/Button;

    .line 92
    const v2, 0x7f0800bc

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    .line 93
    const v2, 0x7f0800bd

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 97
    const v3, 0x7f0800bb

    .line 96
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/etao/kakalib/CaptureCodeFragment;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCaptureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;

    .line 98
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCaptureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v2}, Lcom/etao/kakalib/CaptureCodeFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    .local v0, captureView:Landroid/view/ViewGroup;
    const v2, 0x7f08015d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCameraLocate:Landroid/view/View;

    .line 102
    new-instance v2, Lcom/etao/kakalib/KakaLibScanController;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCaptureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-direct {v2, v3, p0}, Lcom/etao/kakalib/KakaLibScanController;-><init>(Lcom/etao/kakalib/business/KakaLibPreviewController;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 104
    new-instance v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-direct {v2, p0, v3, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$CustomDecodeResultRawProcesser;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mRawProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    .line 107
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mRawProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    .line 106
    invoke-static {v2, v3}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeFlowBuilder;->buildDecodeQRAndBarCodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v1

    .line 109
    .local v1, decodeQRAndBarCodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v2, v1}, Lcom/etao/kakalib/KakaLibScanController;->registerDecodeResultProcesser(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z

    .line 111
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v2, v1}, Lcom/etao/kakalib/KakaLibScanController;->setCurrentPreviewDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;)Z

    .line 115
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 116
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-static {v3, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultProcesserBuilder;->builderQrFromAlbumRawProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    move-result-object v3

    .line 114
    invoke-static {v2, v3}, Lcom/etao/kakalib/business/decodeflow/KakaLibDecodeFlowBuilder;->buildQRCodeFromAlbumDecodeFlow(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    .line 117
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mAlbumDecodeFlow:Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/KakaLibScanController;->setmAlbumDecodeFlow(Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;)V

    .line 118
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCaptureCodeFragment:Lcom/etao/kakalib/CaptureCodeFragment;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/CaptureCodeFragment;->setScanController(Lcom/etao/kakalib/KakaLibScanController;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected exitAnim()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->exitAnim()V

    .line 156
    return-void
.end method

.method public hideCameraLocate()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCameraLocate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCameraLocate:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "ActionOpenScanResult"

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mQRCodeKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->closeKeyGuard()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->kakaLibScanController:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibScanController;->restartPreviewModeAndRequestOneFrame()Z

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->onBackPressed()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageCreate(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    .line 85
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->initContentView()V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 147
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageLeave(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->sendKeepLock()V

    .line 150
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 72
    const v0, 0x7f040012

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->overridePendingTransition(II)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 138
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTPageEnter(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->cancelKeepLock()V

    .line 141
    return-void
.end method

.method public showCameraLocate()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCameraLocate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mCameraLocate:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_0
    return-void
.end method
