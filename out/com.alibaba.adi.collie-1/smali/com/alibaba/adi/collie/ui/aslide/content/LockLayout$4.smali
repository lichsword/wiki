.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$4;
.super Ljava/lang/Object;
.source "LockLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$4;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(IF)V
    .locals 2
    .parameter "offsetY"
    .parameter "speed"

    .prologue
    .line 471
    sget-object v0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u753b\u8c03\u7528hide callback"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$4;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    const/4 v1, 0x1

    #calls: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->hideCallback(Z)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$6(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;Z)V

    .line 473
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 467
    return-void
.end method
