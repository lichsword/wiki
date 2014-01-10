.class Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$2;
.super Ljava/lang/Object;
.source "ToolBoxLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->playMoveEndAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(I)V
    .locals 2
    .parameter "offsetY"

    .prologue
    .line 369
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u753b\u8c03\u7528hideCallback"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$2;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->hideCallback()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->access$5(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V

    .line 372
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 365
    return-void
.end method
