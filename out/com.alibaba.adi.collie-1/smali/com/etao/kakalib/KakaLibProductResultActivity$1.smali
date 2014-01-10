.class Lcom/etao/kakalib/KakaLibProductResultActivity$1;
.super Ljava/lang/Object;
.source "KakaLibProductResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/KakaLibProductResultActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

.field private final synthetic val$isHuoyanInstalled:Z


# direct methods
.method constructor <init>(Lcom/etao/kakalib/KakaLibProductResultActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    iput-boolean p2, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->val$isHuoyanInstalled:Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 79
    const-string v0, "KakaLibProductResultActivity"

    const-string v1, "huoyan button clicked"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->val$isHuoyanInstalled:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    .line 82
    iget-object v1, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    .line 83
    iget-object v2, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    const-string v3, "kakalib_kaka_package_name"

    .line 84
    const v4, 0x7f070001

    .line 82
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->openApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "huoyansdk_barcode_tb_down"

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onButtonClick(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    .line 88
    iget-object v1, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    .line 89
    iget-object v2, p0, Lcom/etao/kakalib/KakaLibProductResultActivity$1;->this$0:Lcom/etao/kakalib/KakaLibProductResultActivity;

    .line 90
    const-string v3, "kakalib_url_huoyan_apk_download"

    .line 91
    const/high16 v4, 0x7f07

    .line 88
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/etao/kakalib/KakaLibProductResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
