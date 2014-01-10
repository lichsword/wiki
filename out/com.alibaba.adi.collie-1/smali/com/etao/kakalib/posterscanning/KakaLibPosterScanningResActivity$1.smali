.class Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$1;
.super Ljava/lang/Object;
.source "KakaLibPosterScanningResActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    invoke-virtual {v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;->finish()V

    .line 150
    return-void
.end method
