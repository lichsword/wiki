.class Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;
.super Ljava/lang/Object;
.source "AsyncLoadImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->loadFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

.field private final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field private final synthetic val$assetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetPath:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetManager:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$1(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    .line 189
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v5}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v4

    .line 190
    .local v4, screenSize:[I
    const/4 v0, 0x0

    .line 192
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetManager:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetPath:Ljava/lang/String;

    const/4 v7, 0x0

    aget v7, v4, v7

    .line 193
    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 192
    invoke-static {v5, v6, v7, v8, v9}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 201
    :goto_0
    if-eqz v0, :cond_0

    .line 202
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 203
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->finishHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$3(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #screenSize:[I
    :cond_0
    :goto_1
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TFNetImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to read asset bitmap "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->mCurUri:Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;->access$1(Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #screenSize:[I
    :catch_1
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 197
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetManager:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/AsyncLoadImage$4;->val$assetPath:Ljava/lang/String;

    aget v7, v4, v10

    div-int/lit8 v7, v7, 0x2

    .line 198
    aget v8, v4, v11

    div-int/lit8 v8, v8, 0x2

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 197
    invoke-static {v5, v6, v7, v8, v9}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
