.class Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;
.super Ljava/lang/Object;
.source "WallpaperManagerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->blurImageAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

.field private final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 501
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v8}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$2(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v8

    if-nez v8, :cond_3

    move v4, v6

    .line 502
    .local v4, sendBoardcast:Z
    :goto_0
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v8}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$2(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    #setter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$3(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;I)V

    .line 503
    const-string v8, "WallpaperManagerX"

    const-string v9, "blurImageAsync(): sendBroadcast = %s for %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    aput-object v7, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, bmp:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 509
    .local v0, blured:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 510
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$5(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I
    invoke-static {v8}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$6(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v8

    invoke-static {}, Lcom/alibaba/adi/collie/util/ImageUtil;->optionDefault()Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/alibaba/adi/collie/util/ImageUtil;->decodeSampledBitmap(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 511
    .local v5, tmp:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapWidth:I
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$5(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->bitmapHeight:I
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$6(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/adi/collie/util/ImageUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 512
    invoke-static {v5}, Lcom/alibaba/adi/collie/util/ImageUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v2, :cond_0

    .line 520
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 522
    const/16 v6, 0x1e

    const/16 v7, 0x1e

    invoke-static {v2, v6, v7}, Lcom/alibaba/adi/collie/util/ImageUtil;->optimizedBoxBlur(Landroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 524
    move-object v0, v2

    .line 529
    :goto_2
    if-eqz v0, :cond_6

    .line 530
    const/4 v1, 0x0

    .line 532
    .local v1, bluredPath:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurDir:Ljava/io/File;
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$7(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/adi/collie/util/FileUtil;->getFileNameWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3c

    invoke-static {v0, v6, v7, v8}, Lcom/alibaba/adi/collie/util/ImageUtil;->saveBmp(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v6, "WallpaperManagerX"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "blurImageAsync(): blurred image saved to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$1(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->setBlurPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    if-eqz v4, :cond_0

    .line 536
    const-string v6, "WallpaperManagerX"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "blurImageAsync(): send broadcast INTENT_ACTION_BLUR_COMPLETE for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v6, "com.alibaba.adi.collie.wallpaper.blurCompleted"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 548
    .end local v1           #bluredPath:Ljava/lang/String;
    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$2(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    #setter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$3(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;I)V

    .line 549
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$4(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v12, :cond_2

    .line 551
    if-eqz v2, :cond_1

    .line 552
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    :cond_1
    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 559
    :cond_2
    return-void

    .end local v0           #blured:Landroid/graphics/Bitmap;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #sendBoardcast:Z
    :cond_3
    move v4, v7

    .line 501
    goto/16 :goto_0

    .line 513
    .restart local v0       #blured:Landroid/graphics/Bitmap;
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #sendBoardcast:Z
    :catch_0
    move-exception v3

    .line 514
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v6, "WallpaperManagerX"

    const-string v7, "OOM occured when loading original bitmap"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 547
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    .line 548
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$2(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    #setter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->_blur_thread_num_:I
    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$3(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;I)V

    .line 549
    iget-object v7, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mBlurTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$4(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, v12, :cond_5

    .line 551
    if-eqz v2, :cond_4

    .line 552
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    :cond_4
    if-eqz v0, :cond_5

    .line 555
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 558
    :cond_5
    throw v6

    .line 525
    :catch_1
    move-exception v3

    .line 526
    .restart local v3       #e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v6, "WallpaperManagerX"

    const-string v7, "OOM occurred when bluring and darking"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_2

    .line 539
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #bluredPath:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 540
    .local v3, e:Ljava/io/IOException;
    const-string v6, "WallpaperManagerX"

    const-string v7, "blurImageAsync(): save blur image failed"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 544
    .end local v1           #bluredPath:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    const-string v6, "WallpaperManagerX"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "blurImageAsync(): failed to get blurred image for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$3;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method
