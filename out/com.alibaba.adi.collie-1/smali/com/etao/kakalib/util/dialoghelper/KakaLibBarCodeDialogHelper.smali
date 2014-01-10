.class public Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;
.super Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;
.source "KakaLibBarCodeDialogHelper.java"


# static fields
.field private static final DIALOG_ID_BARCODE:Ljava/lang/String; = "DIALOG_ID_BARCODE"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "fragmentActivity"
    .parameter "scanController"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBaseDialogHelper;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/KakaLibScanController;)V

    .line 18
    return-void
.end method


# virtual methods
.method public showNoQRCodeFoundDialog()V
    .locals 5

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 33
    const-string v3, "kakalib_no_qr_obtain"

    const v4, 0x7f07001d

    .line 32
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etao/kakalib/views/KakaLibTextDialogFragment;->newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibTextDialogFragment;

    move-result-object v0

    .line 34
    .local v0, kakaLibTextDialogFragment:Lcom/etao/kakalib/views/KakaLibTextDialogFragment;
    const-string v1, "DIALOG_ID_BARCODE"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public showQRText(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 44
    iget-object v1, p1, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;->newInstance(Ljava/lang/String;)Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;

    move-result-object v0

    .line 45
    .local v0, dialogFragment:Lcom/etao/kakalib/views/KakaLibQrTextDialogFragment;
    const-string v1, "DIALOG_ID_BARCODE"

    invoke-virtual {p0, v0, v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeDialogHelper;->showDialogFragment(Lcom/etao/kakalib/views/KaDialogFragment;Ljava/lang/String;)V

    .line 46
    return-void
.end method
