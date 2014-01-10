.class final Lcom/alibaba/adi/collie/ui/view/SwitchButton$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/view/SwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/SwitchButton$PerformClick;->this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/view/SwitchButton;Lcom/alibaba/adi/collie/ui/view/SwitchButton$PerformClick;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/SwitchButton$PerformClick;-><init>(Lcom/alibaba/adi/collie/ui/view/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SwitchButton$PerformClick;->this$0:Lcom/alibaba/adi/collie/ui/view/SwitchButton;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/SwitchButton;->performClick()Z

    .line 290
    return-void
.end method
