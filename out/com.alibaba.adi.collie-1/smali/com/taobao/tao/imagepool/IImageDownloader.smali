.class public interface abstract Lcom/taobao/tao/imagepool/IImageDownloader;
.super Ljava/lang/Object;
.source "IImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/imagepool/IImageDownloader$DownloadNotifier;
    }
.end annotation


# static fields
.field public static final MSG_DL_FAILURE:I = 0x3f7

.field public static final MSG_DL_FAILURE_NOREPEAT:I = 0x3fc

.field public static final MSG_DL_FINISHED:I = 0x3f8

.field public static final MSG_DL_INVALIDURL:I = 0x3f9

.field public static final MSG_DL_PROGRESS:I = 0x3fb

.field public static final MSG_DL_USER_CANCELED:I = 0x3fa

.field public static final MSG_QUIT:I = 0x3f6

.field public static final MSG_START_DOWNLOAD:I = 0x3f5

.field public static final MSG_STOP_DOWNLOAD:I = 0x3f4


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract setURL(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract startDownload()V
.end method

.method public abstract stop()V
.end method
