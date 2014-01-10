.class public Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;
.super Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;
.source "KakaLibScanLogoProcesser.java"

# interfaces
.implements Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;


# static fields
.field public static final LOGO_BG_NAME:Ljava/lang/String; = "kakalib_logobg"


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "scanController"
    .parameter "fragmentActivity"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser;-><init>(Lcom/etao/kakalib/KakaLibScanController;Landroid/support/v4/app/FragmentActivity;)V

    .line 23
    invoke-virtual {p0, p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->setLogoScanCallback(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsScanProcesser$LogoScanCallback;)V

    .line 24
    return-void
.end method

.method private requestScanLogoResult(Ljava/lang/String;)Lcom/etao/kaka/decode/LogoDecodeResult;
    .locals 1
    .parameter "featureStr"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->syncScanLogo(Landroid/content/Context;Ljava/lang/String;)Lcom/etao/kaka/decode/LogoDecodeResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onDecodeFailed(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, feature:Ljava/lang/Object;,"TT;"
    move-object v1, p1

    check-cast v1, Lcom/etao/kaka/decode/ScanFeatureResult;

    .line 30
    .local v1, featureResult:Lcom/etao/kaka/decode/ScanFeatureResult;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "kakalib_logobg"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v0, bgfile:Ljava/io/File;
    iget-object v3, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    invoke-virtual {v3}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getYuvImageData()Landroid/graphics/YuvImage;

    move-result-object v3

    iget-object v4, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->saveImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;Ljava/io/File;)Z

    move-result v2

    .line 32
    .local v2, save:Z
    return-void
.end method

.method public onDecodeStart()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onDecodeSuccess(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 42
    move-object v0, p1

    check-cast v0, Lcom/etao/kaka/decode/LogoDecodeResult;

    .line 43
    .local v0, r:Lcom/etao/kaka/decode/LogoDecodeResult;
    return-void
.end method

.method public onGetReqestApi(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .line 47
    .local p1, feature:Ljava/lang/Object;,"TT;"
    move-object v1, p1

    check-cast v1, Lcom/etao/kaka/decode/ScanFeatureResult;

    .line 48
    .local v1, featureResult:Lcom/etao/kaka/decode/ScanFeatureResult;
    iget-object v2, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->feature:Ljava/lang/String;

    .line 49
    .local v2, featureStr:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->requestScanLogoResult(Ljava/lang/String;)Lcom/etao/kaka/decode/LogoDecodeResult;

    move-result-object v3

    .line 50
    .local v3, logoResult:Lcom/etao/kaka/decode/LogoDecodeResult;
    if-eqz v3, :cond_0

    .line 51
    iget-object v5, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    invoke-virtual {v5}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getYuvImageData()Landroid/graphics/YuvImage;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "kakalib_logobg"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v0, bgfile:Ljava/io/File;
    iget-object v5, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    invoke-virtual {v5}, Lcom/etao/kakalib/business/KakaLibImageWrapper;->getYuvImageData()Landroid/graphics/YuvImage;

    move-result-object v5

    iget-object v6, v1, Lcom/etao/kaka/decode/ScanFeatureResult;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v6, v0}, Lcom/etao/kakalib/business/resultprocesser/KakaLibScanLogoProcesser;->saveImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;Ljava/io/File;)Z

    move-result v4

    .line 54
    .local v4, save:Z
    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/etao/kaka/decode/LogoDecodeResult;->setBgPath(Ljava/lang/String;)V

    .line 59
    .end local v0           #bgfile:Ljava/io/File;
    .end local v4           #save:Z
    :cond_0
    return-object v3
.end method

.method saveImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;Ljava/io/File;)Z
    .locals 5
    .parameter "yuvImage"
    .parameter "rect"
    .parameter "bgfile"

    .prologue
    const/4 v4, 0x0

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, fileOutput:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1           #fileOutput:Ljava/io/FileOutputStream;
    .local v2, fileOutput:Ljava/io/FileOutputStream;
    const/16 v3, 0x64

    :try_start_1
    invoke-virtual {p1, p2, v3, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 75
    invoke-static {v2, v4}, Lcom/etao/kakalib/util/KaKaLibUtils;->close(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    move-object v1, v2

    .line 78
    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutput:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v1, v3}, Lcom/etao/kakalib/util/KaKaLibUtils;->close(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-static {v1, v4}, Lcom/etao/kakalib/util/KaKaLibUtils;->close(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 78
    const/4 v3, 0x0

    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 75
    :goto_2
    invoke-static {v1, v4}, Lcom/etao/kakalib/util/KaKaLibUtils;->close(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 76
    throw v3

    .line 74
    .end local v1           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 71
    .end local v1           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutput:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
