.class Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->playMoveEndAnimation(ZI)V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$2;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveEndCallback(I)V
    .locals 1
    .parameter "offsetY"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock$2;->this$1:Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;

    #calls: Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->hideCallback()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;->access$4(Lcom/alibaba/adi/collie/ui/MainActivity$SlideUnlock;)V

    .line 1325
    return-void
.end method

.method public onMoveingCallback(I)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 1320
    return-void
.end method
