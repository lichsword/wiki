.class Lcom/alibaba/adi/collie/util/ImageUtil$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/util/ImageUtil;->downloadImage(Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/ImageUtil$1;->val$url:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/ImageUtil$1;->val$url:Ljava/lang/String;

    return-object v0
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 4
    .parameter "bytes"

    .prologue
    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, error:Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OOM at ImageUtil.downloadImage(), url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/util/ImageUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method
