.class Lcom/etao/kakalib/CaptureCodeFragment$5;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/CaptureCodeFragment;->dismissScanViewAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/CaptureCodeFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$5;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$5;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->barCodeScanView:Lcom/etao/kakalib/views/KakaLibBarCodeScanView;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$10(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/views/KakaLibBarCodeScanView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibBarCodeScanView;->setVisibility(I)V

    .line 400
    return-void
.end method
