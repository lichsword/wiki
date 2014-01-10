.class public Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;
.super Ljava/lang/Object;
.source "SystemClearConfirmedGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CANCEL:I = 0x1

.field public static final CONFIRM:I


# instance fields
.field private isShowing:Z

.field private mCancelledListener:Landroid/view/View$OnClickListener;

.field private mClickedView:Landroid/view/View;

.field private mConfirmedListener:Landroid/view/View$OnClickListener;

.field private mGuideLayout:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 1
    .parameter "activity"
    .parameter "layoutRes"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->isShowing:Z

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->init(Landroid/app/Activity;Ljava/lang/Integer;)V

    .line 31
    return-void
.end method

.method private init(Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 3
    .parameter "activity"
    .parameter "layoutRes"

    .prologue
    .line 55
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public finish(IZ)V
    .locals 3
    .parameter "type"
    .parameter "forceEnd"

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "xhh"

    const-string v1, "xhh finish"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->isShowing:Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    if-nez p1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mConfirmedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mConfirmedListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mCancelledListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mCancelledListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getGuideLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 124
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->finish(IZ)V

    .line 125
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mClickedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mClickedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    :cond_1
    return-void
.end method

.method public setShowing(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->isShowing:Z

    .line 52
    return-void
.end method

.method public show(Ljava/lang/Integer;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "confirmedViewId"
    .parameter "confirmedListener"
    .parameter "cancelledListener"

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->isShowing:Z

    if-nez v2, :cond_1

    .line 72
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x402

    .line 73
    const/4 v3, -0x3

    .line 72
    invoke-direct {v0, v2, v4, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 74
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mConfirmedListener:Landroid/view/View$OnClickListener;

    .line 78
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mCancelledListener:Landroid/view/View$OnClickListener;

    .line 79
    move-object v1, p1

    .line 80
    .local v1, mConfirmedViewId:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mClickedView:Landroid/view/View;

    .line 82
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->mClickedView:Landroid/view/View;

    new-instance v3, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide$1;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide$1;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->isShowing:Z

    .line 91
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #mConfirmedViewId:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public showing()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemClearConfirmedGuide;->isShowing:Z

    return v0
.end method
