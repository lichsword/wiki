.class public interface abstract Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;
.super Ljava/lang/Object;
.source "IImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/IImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadNotifier"
.end annotation


# virtual methods
.method public abstract notify(I[BLjava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;II)V
.end method
