.class Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;
.super Ljava/lang/Object;
.source "AsyncLoadImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->loadFromFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v3

    .line 148
    .local v3, screenSize:[I
    const/4 v0, 0x0

    .line 150
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$1(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    .line 151
    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 150
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    if-eqz v0, :cond_0

    .line 160
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 161
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 155
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$1(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Ljava/lang/String;

    move-result-object v4

    aget v5, v3, v8

    div-int/lit8 v5, v5, 0x2

    aget v6, v3, v9

    div-int/lit8 v6, v6, 0x2

    .line 156
    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 155
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
