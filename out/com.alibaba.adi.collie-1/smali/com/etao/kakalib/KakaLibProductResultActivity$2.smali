.class Lcom/etao/kakalib/KakaLibProductResultActivity$2;
.super Ljava/lang/Object;
.source "KakaLibProductResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/KakaLibProductResultActivity;->showProductMessageFragment(Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

.field private final synthetic val$productInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/KakaLibProductResultActivity;Lcom/etao/kakalib/api/beans/TBBarcodeResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$2;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    iput-object p2, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$2;->val$productInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 137
    const-string v1, "huoyansdk_barcode_tb_search"

    invoke-static {v1}, Lcom/etao/kakalib/util/UserTrackHelper;->onButtonClick(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$2;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    iget-object v2, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$2;->val$productInfo:Lcom/etao/kakalib/api/beans/TBBarcodeResult;

    invoke-virtual {v2}, Lcom/etao/kakalib/api/beans/TBBarcodeResult;->getKeyword()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibCallTaoBaoClientUtil;->goTaobaoClientSearchListActivity(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
