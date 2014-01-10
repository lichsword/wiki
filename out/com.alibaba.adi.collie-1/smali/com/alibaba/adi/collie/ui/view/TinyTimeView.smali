.class public Lcom/alibaba/adi/collie/ui/view/TinyTimeView;
.super Landroid/widget/TextView;
.source "TinyTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;
    }
.end annotation


# instance fields
.field private final mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/TinyTimeView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/TinyTimeView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/TinyTimeView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    .line 33
    return-void
.end method


# virtual methods
.method public getTimeChangeReceiver()Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->mTimeChangeReceiver:Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 72
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->setVisibility(I)V

    .line 73
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 74
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 76
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->setVisibility(I)V

    .line 83
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 84
    .local v0, popAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void
.end method
