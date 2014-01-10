.class public abstract Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
.super Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;
.source "BaseContentFragment.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/ILazyInitialize;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mInitProgressBar:Landroid/widget/ImageView;

.field protected volatile mLazyInitialized:Z

.field private rootView:Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->mLazyInitialized:Z

    .line 18
    return-void
.end method

.method private doSlideUnlock()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onUnlocked()V

    .line 101
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 103
    return-void
.end method


# virtual methods
.method protected initRootView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 62
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;

    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->setParentFragment(Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;)V

    .line 64
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->mLazyInitialized:Z

    return v0
.end method

.method public lazyInit()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->mInitProgressBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->mInitProgressBar:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->mLazyInitialized:Z

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->mInitProgressBar:Landroid/widget/ImageView;

    .line 36
    return-object v0
.end method

.method public onHideFinish(Z)V
    .locals 1
    .parameter "cancelUnlock"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->showViewsOnLockHide()V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->doCancelUnlockUT()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 120
    :cond_0
    return-void
.end method

.method public onHideForUnlockFinish()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->pageLockFrom:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->slideOut()V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->getPageLockFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->onUnlocked()V

    .line 134
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    goto :goto_0
.end method

.method public onMoveBegin()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->hideViewsOnLockShow()V

    .line 107
    return-void
.end method

.method public abstract onPageSelected(I)V
.end method

.method public onShowFinish()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onUnlocked()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 75
    return-void
.end method

.method public resetRootView()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->rootView:Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->reset()V

    .line 70
    :cond_0
    return-void
.end method

.method public unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
    .locals 2
    .parameter "nextAction"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->TAG:Ljava/lang/String;

    const-string v1, "parameter next action is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 89
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->doSlideUnlock()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->isSlideUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {p1}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->getPageLockFrom()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->doSlideUnlock()V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->showLockLayout(Z)Z

    goto :goto_0
.end method
