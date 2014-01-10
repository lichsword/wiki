.class Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;
.super Ljava/lang/Object;
.source "KakaLibBarCodeProductDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

.field private final synthetic val$dBarcodeSafeResult:Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    iput-object p2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;->val$dBarcodeSafeResult:Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    #getter for: Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->qrUrlMsgDialogFragment:Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;
    invoke-static {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->access$0(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$6;->val$dBarcodeSafeResult:Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/views/KakaLibQRUrlDialogFragment;->updateStatusUrlResult(Lcom/etao/kakalib/api/beans/DBarcodeInfoResult;)V

    .line 143
    return-void
.end method
