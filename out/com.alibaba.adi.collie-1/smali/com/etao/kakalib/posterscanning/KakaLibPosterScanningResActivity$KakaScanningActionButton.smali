.class public final Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;
.super Landroid/widget/ImageView;
.source "KakaLibPosterScanningResActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KakaScanningActionButton"
.end annotation


# instance fields
.field public mActionType:Ljava/lang/String;

.field public mTargetUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity$KakaScanningActionButton;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    .line 82
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method
