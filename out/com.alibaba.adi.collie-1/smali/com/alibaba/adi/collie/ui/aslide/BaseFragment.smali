.class public abstract Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;
.implements Lcom/alibaba/adi/collie/ui/lock/IUnlockController;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

.field protected nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

.field protected pageLockFrom:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    const-string v0, "base"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->pageLockFrom:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private getLockLayoutInMainActivity()Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getLockLayout()Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doCancelUnlockUT()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->nextAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->getPageLockFrom()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, from:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 165
    .end local v0           #from:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->pageLockFrom:Ljava/lang/String;

    .restart local v0       #from:Ljava/lang/String;
    goto :goto_0
.end method

.method public executeTouchEventByMainActivity(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 89
    .local v0, activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity;->executeUnlockTouchEvent(Landroid/view/MotionEvent;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "parent fragment\'s MainActivity ref, is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMainActivityContext()Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    return-object v0
.end method

.method public getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideViewsOnLockShow()V
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "hide view pager"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 80
    .local v0, activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideViewsOnLockShow()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "parent fragment\'s MainActivity ref is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideViewsOnToolboxShow()V
    .locals 3

    .prologue
    .line 58
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh hide top navigation layout"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 60
    .local v0, activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->hideViewsOnToolboxShow()V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "parent fragment\'s MainActivity ref, is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract initRootView(Landroid/view/View;)V
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 33
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 34
    return-void
.end method

.method public abstract onUnlocked()V
.end method

.method public abstract resetRootView()V
.end method

.method public setLockLayoutVisible()Z
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, result:Z
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getLockLayoutInMainActivity()Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    move-result-object v0

    .line 116
    .local v0, lockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->addEventListener(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;)V

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->showViewLock()V

    .line 119
    const/4 v1, 0x1

    .line 124
    :goto_0
    return v1

    .line 121
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v3, "parent fragment\'s MainActivity ref, is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMainActivityContext(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 28
    return-void
.end method

.method public showLockLayout(Z)Z
    .locals 4
    .parameter "smooth"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->hideViewsOnLockShow()V

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, result:Z
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getLockLayoutInMainActivity()Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    move-result-object v0

    .line 138
    .local v0, lockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->addEventListener(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$OnEventListener;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->show(Z)V

    .line 141
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v3, "parent fragment\'s MainActivity ref, is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showViewsOnLockHide()V
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "show view pager"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 70
    .local v0, activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->showViewsOnLockHide()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "parent fragment\'s MainActivity ref is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showViewsOnToolboxHide()V
    .locals 3

    .prologue
    .line 48
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh show top navigation layout"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    .line 50
    .local v0, activity:Lcom/alibaba/adi/collie/ui/MainActivity;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->showViewsOnToolboxHide()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "parent fragment\'s MainActivity ref, is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
.end method
