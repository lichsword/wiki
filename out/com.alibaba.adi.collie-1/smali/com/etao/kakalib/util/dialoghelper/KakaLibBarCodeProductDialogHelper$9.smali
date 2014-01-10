.class Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$9;
.super Ljava/lang/Object;
.source "KakaLibBarCodeProductDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showWillUpdateDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$9;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$9;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->restartPreviewModeAndRequestOneFrame()V

    .line 205
    return-void
.end method
