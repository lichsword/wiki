.class Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->slideOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$3;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(IF)V
    .locals 1
    .parameter "offsetY"
    .parameter "speed"

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$3;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$6(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->onUnlocked()V

    .line 1391
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 1386
    return-void
.end method
