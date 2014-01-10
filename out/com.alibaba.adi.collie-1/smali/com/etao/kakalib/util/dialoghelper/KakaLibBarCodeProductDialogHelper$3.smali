.class Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;
.super Ljava/lang/Object;
.source "KakaLibBarCodeProductDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showRequestDialog(Landroid/taobao/apirequest/ApiID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

.field private final synthetic val$apiID:Landroid/taobao/apirequest/ApiID;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Landroid/taobao/apirequest/ApiID;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    iput-object p2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;->val$apiID:Landroid/taobao/apirequest/ApiID;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 94
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;->val$apiID:Landroid/taobao/apirequest/ApiID;

    invoke-virtual {v0, v1}, Landroid/taobao/apirequest/ApiRequestMgr;->cancelConnect(Landroid/taobao/apirequest/ApiID;)Z

    .line 95
    iget-object v0, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$3;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->restartPreviewModeAndRequestOneFrame()V

    .line 96
    return-void
.end method
