.class public Lcom/etao/kakalib/business/resultprocesser/KakalibScanPosterProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;
.source "KakalibScanPosterProcesser.java"

# interfaces
.implements Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onDecodeFailed(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, feature:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method public onDecodeStart()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onDecodeSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 32
    return-void
.end method

.method public onGetReqestApi(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, feature:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    return-object v0
.end method
