.class public abstract Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "BaseWebviewActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/IUnlockController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "NativeInterface"


# instance fields
.field private loadingImage:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

.field protected mKeyGuardPanelLayout:Landroid/view/ViewGroup;

.field private mKeyGuardPanelListener:Landroid/view/View$OnTouchListener;

.field protected mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

.field protected mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

.field private mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

.field private mMainContainer:Landroid/view/ViewGroup;

.field mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

.field mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

.field private mPressBackAgain:Z

.field private mToastPressBack:Landroid/widget/Toast;

.field private mWebView:Landroid/webkit/WebView;

.field private webSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mPressBackAgain:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    .line 305
    new-instance v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    .line 321
    new-instance v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    .line 364
    new-instance v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelListener:Landroid/view/View$OnTouchListener;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->loadingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mPressBackAgain:Z

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f03001e

    return v0
.end method

.method protected abstract getPageUrl()Ljava/lang/String;
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hideContent()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 152
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mMainContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 155
    return-void
.end method

.method protected initWebView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 123
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mMainContainer:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelLayout:Landroid/view/ViewGroup;

    .line 125
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    .line 127
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    .line 128
    invoke-static {}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->getInstance()Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 130
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->loadingImage:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    .line 132
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->webSettings:Landroid/webkit/WebSettings;

    .line 133
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$MyWebViewClient;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->load()V

    .line 141
    return-void
.end method

.method protected load()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->getLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->setContentView(I)V

    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->initWebView()V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 66
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->closeKeyGuard()V

    .line 96
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mPressBackAgain:Z

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mToastPressBack:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mToastPressBack:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_3
    const v1, 0x7f0a01a8

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mToastPressBack:Landroid/widget/Toast;

    .line 78
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mToastPressBack:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mPressBackAgain:Z

    .line 81
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$5;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    .line 88
    const-wide/16 v3, 0xbb8

    .line 81
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUnlocked()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->closeKeyGuard()V

    .line 191
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$6;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V

    .line 199
    const-wide/16 v2, 0x12c

    .line 191
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method

.method public setWebViewInterface(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "NativeInterface"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public showContent()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    .local v0, popAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mMainContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void
.end method

.method public unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
    .locals 1
    .parameter "nextAction"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->setAction(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onUnlocked()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardController:Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;

    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;->showKeyGuard()V

    goto :goto_0
.end method
