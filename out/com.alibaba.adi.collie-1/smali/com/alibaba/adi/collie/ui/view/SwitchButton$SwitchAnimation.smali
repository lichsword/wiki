.class final Lcom/alibaba/adi/collie/ui/view/SwitchButton$SwitchAnimation;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/view/SwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/SwitchButton$SwitchAnimation;->this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/view/SwitchButton;Lcom/alibaba/adi/collie/ui/view/SwitchButton$SwitchAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton$SwitchAnimation;-><init>(Lcom/alibaba/adi/collie/ui/view/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SwitchButton$SwitchAnimation;->this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    #getter for: Lcom/alibaba/adi/collie/ui/view/SwitchButton;->mAnimating:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->access$0(Lcom/alibaba/adi/collie/ui/view/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SwitchButton$SwitchAnimation;->this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    #calls: Lcom/alibaba/adi/collie/ui/view/SwitchButton;->doAnimation()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->access$1(Lcom/alibaba/adi/collie/ui/view/SwitchButton;)V

    .line 367
    invoke-static {p0}, Lcom/alibaba/adi/collie/ui/view/FrameAnimationController;->requestAnimationFrame(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
