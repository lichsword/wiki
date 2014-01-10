.class Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;
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

.field private final synthetic val$streamUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    iput-object p2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;->val$streamUri:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;->val$streamUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$3;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    invoke-virtual {v1, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method
