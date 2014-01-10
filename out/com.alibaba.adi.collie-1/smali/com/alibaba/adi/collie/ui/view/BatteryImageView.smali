.class public Lcom/alibaba/adi/collie/ui/view/BatteryImageView;
.super Landroid/widget/ImageView;
.source "BatteryImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;
    }
.end annotation


# instance fields
.field private final mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/BatteryImageView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/BatteryImageView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/BatteryImageView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    .line 21
    return-void
.end method


# virtual methods
.method public getBatteryChangeReceiver()Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->mBatteryChangeReceiver:Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 145
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setVisibility(I)V

    .line 146
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 147
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 149
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setVisibility(I)V

    .line 156
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    .local v0, popAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 159
    return-void
.end method
