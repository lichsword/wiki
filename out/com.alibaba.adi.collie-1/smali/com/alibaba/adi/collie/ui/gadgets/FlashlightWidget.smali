.class public Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;
.super Landroid/widget/ToggleButton;
.source "FlashlightWidget.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private syncState()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/alibaba/adi/collie/util/FlashLight;->getInstance()Lcom/alibaba/adi/collie/util/FlashLight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/FlashLight;->open()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/util/FlashLight;->getInstance()Lcom/alibaba/adi/collie/util/FlashLight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/FlashLight;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    .local v1, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->getGravity()I

    move-result v9

    and-int/lit8 v8, v9, 0x70

    .line 59
    .local v8, verticalGravity:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->getGravity()I

    move-result v9

    and-int/lit8 v4, v9, 0x7

    .line 60
    .local v4, horizontalGravity:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 61
    .local v2, drawableHeight:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 63
    .local v3, drawableWidth:I
    const/4 v7, 0x0

    .line 64
    .local v7, top:I
    sparse-switch v8, :sswitch_data_0

    .line 72
    :goto_0
    add-int v0, v7, v2

    .line 73
    .local v0, bottom:I
    const/4 v5, 0x0

    .line 74
    .local v5, left:I
    sparse-switch v4, :sswitch_data_1

    .line 82
    :goto_1
    add-int v6, v5, v3

    .line 84
    .local v6, right:I
    invoke-virtual {v1, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    .end local v0           #bottom:I
    .end local v2           #drawableHeight:I
    .end local v3           #drawableWidth:I
    .end local v4           #horizontalGravity:I
    .end local v5           #left:I
    .end local v6           #right:I
    .end local v7           #top:I
    .end local v8           #verticalGravity:I
    :cond_0
    return-void

    .line 66
    .restart local v2       #drawableHeight:I
    .restart local v3       #drawableWidth:I
    .restart local v4       #horizontalGravity:I
    .restart local v7       #top:I
    .restart local v8       #verticalGravity:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->getHeight()I

    move-result v9

    sub-int v7, v9, v2

    .line 67
    goto :goto_0

    .line 69
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->getHeight()I

    move-result v9

    sub-int/2addr v9, v2

    div-int/lit8 v7, v9, 0x2

    goto :goto_0

    .line 76
    .restart local v0       #bottom:I
    .restart local v5       #left:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->getWidth()I

    move-result v9

    sub-int v5, v9, v3

    .line 77
    goto :goto_1

    .line 79
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    div-int/lit8 v5, v9, 0x2

    goto :goto_1

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 74
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/ToggleButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 92
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->syncState()V

    .line 93
    return-void
.end method
