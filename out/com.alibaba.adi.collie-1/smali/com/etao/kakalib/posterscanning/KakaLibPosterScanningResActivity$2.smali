.class Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$2;
.super Ljava/lang/Object;
.source "KakaLibPosterScanningResActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->prepareSrc()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    .line 364
    check-cast p1, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;

    .end local p1
    iget-object v1, p1, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->mTargetUrl:Ljava/lang/String;

    .line 363
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByNativeBrowserActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 365
    return-void
.end method
