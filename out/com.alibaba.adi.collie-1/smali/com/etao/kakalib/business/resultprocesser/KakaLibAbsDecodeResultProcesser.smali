.class public abstract Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
.super Ljava/lang/Object;
.source "KakaLibAbsDecodeResultProcesser.java"


# instance fields
.field private fragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field private scanController:Lcom/etao/kakalib/KakaLibScanController;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 17
    iput-object p2, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract decodeFailed(Ljava/lang/Throwable;)Z
.end method

.method public decodePrepare()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public getScanController()Lcom/etao/kakalib/KakaLibScanController;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    return-object v0
.end method

.method public abstract handleDecodeResult(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation
.end method

.method public needPlayDecodeSuccessSound()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public needShowDecodeSuccessAnimation()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public setFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "fragmentActivity"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 34
    return-void
.end method

.method public setScanController(Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "scanController"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 26
    return-void
.end method
