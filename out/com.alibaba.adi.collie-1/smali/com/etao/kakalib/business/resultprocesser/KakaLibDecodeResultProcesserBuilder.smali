.class public Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultProcesserBuilder;
.super Ljava/lang/Object;
.source "KakaLibDecodeResultProcesserBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builderAccessMtopProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 11
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultAccessMtopProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method public static builderQrFromAlbumAccessMtopProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 31
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumAccessMtopProcesser;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumAccessMtopProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method public static builderQrFromAlbumRawProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 26
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultQrFromAlbumRawProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method public static builderRawProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 21
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultDefaultProcesser;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultDefaultProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method public static builderTaobaoProductProcesser(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    .locals 1
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 16
    new-instance v0, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;

    invoke-direct {v0, p0, p1}, Lcom/etao/kakalib/business/resultprocesser/KakaLibDecodeResultOnlyTaobaoProductProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method
