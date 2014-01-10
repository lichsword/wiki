.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$5;
.super Ljava/lang/Object;
.source "LockLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->playMoveEndAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$5;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 488
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u753b\u8c03\u7528show callback"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$5;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #calls: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->showCallback()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$7(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V

    .line 490
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 484
    return-void
.end method
