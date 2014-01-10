.class public abstract Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;
.source "BaseHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final WEATHER_INTERFACE_ALPHA:F


# instance fields
.field private homeContent:Landroid/widget/RelativeLayout;

.field private isToolboxShown:Z

.field private final mToolBoxCallback:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;

.field private rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

.field private toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->isToolboxShown:Z

    .line 107
    new-instance v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;-><init>(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->mToolBoxCallback:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->isToolboxShown:Z

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Lcom/alibaba/adi/collie/ui/main/action/IAction;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->doSlideUnlock()V

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->isToolboxShown:Z

    return v0
.end method

.method private doSlideUnlock()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onUnlocked()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 100
    return-void
.end method


# virtual methods
.method protected initRootView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 43
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->homeContent:Landroid/widget/RelativeLayout;

    .line 45
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    .line 46
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->mToolBoxCallback:Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment$ToolBoxCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->addEventListener(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$OnEventListener;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->setParentFragment(Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V

    .line 48
    return-void
.end method

.method public onHideFinish(Z)V
    .locals 1
    .parameter "cancelUnlock"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->showViewsOnLockHide()V

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->doCancelUnlockUT()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 211
    :cond_0
    return-void
.end method

.method public onHideForUnlockFinish()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->slideOut()V

    .line 218
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->pageLockFrom:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->getPageLockFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    instance-of v1, v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;

    if-eqz v1, :cond_1

    .line 223
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "main activity\'s sWallpaper is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 227
    .local v0, activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    if-eqz v0, :cond_2

    .line 228
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "invoke showViewsOnLockHide()...OK"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->showViewsOnLockHide()V

    .line 233
    :goto_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setFgBitmapBlur(Z)V

    .line 238
    .end local v0           #activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->onUnlocked()V

    .line 239
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    goto :goto_0

    .line 231
    .restart local v0       #activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    :cond_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "MainActivity ref is null, so can\'t invoke showViewsOnLockHide() method."

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    .end local v0           #activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    :cond_3
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v2, "main activity\'s sWallpaper is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onMoveBegin()V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->hideViewsOnLockShow()V

    .line 197
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hide(Z)V

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->onPause()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->toolBoxLayout:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->refreshUpgradeState()V

    .line 63
    :cond_0
    return-void
.end method

.method public onShowFinish()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onUnlocked()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 105
    return-void
.end method

.method public resetRootView()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->reset()V

    .line 55
    :cond_0
    return-void
.end method

.method public setHomeContentAlpha(FF)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->homeContent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->homeContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 184
    .local v0, oldAm:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 187
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 188
    .local v1, putAm:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 190
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->homeContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    .end local v0           #oldAm:Landroid/view/animation/Animation;
    .end local v1           #putAm:Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
    .locals 2
    .parameter "nextAction"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    const-string v1, "parameter next action is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 85
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->doSlideUnlock()V

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->isSlideUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-interface {p1}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->getPageLockFrom()Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->doSlideUnlock()V

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->showLockLayout(Z)Z

    goto :goto_0
.end method
