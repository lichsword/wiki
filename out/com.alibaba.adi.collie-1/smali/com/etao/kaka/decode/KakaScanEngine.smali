.class public Lcom/etao/kaka/decode/KakaScanEngine;
.super Ljava/lang/Object;
.source "KakaScanEngine.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KakaScanEngine"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    :try_start_0
    const-string v1, "PosterScanning"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 15
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 16
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 17
    const-string v1, "cm_"

    const-string v2, "failed to load static lib poster scanning"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native GetLogoFeature([BIIIIII[B)I
.end method

.method private static native destroyAr()I
.end method

.method public static getLogoFeature([BIILandroid/graphics/Rect;)Ljava/lang/String;
    .locals 15
    .parameter "yuvData"
    .parameter "w"
    .parameter "h"
    .parameter "rect"

    .prologue
    .line 21
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 22
    :cond_0
    const-string v11, ""

    .line 50
    :goto_0
    return-object v11

    .line 24
    :cond_1
    const-string v11, ""

    .line 25
    .local v11, featureStr:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 26
    .local v13, time:J
    const/16 v1, 0x2400

    new-array v8, v1, [B

    .line 28
    .local v8, featureBuffer:[B
    :try_start_0
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v2

    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v1, v2

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v8}, Lcom/etao/kaka/decode/KakaScanEngine;->GetLogoFeature([BIIIIII[B)I

    move-result v10

    .line 29
    .local v10, featureLen:I
    const/4 v12, 0x0

    .line 30
    .local v12, features:[B
    if-lez v10, :cond_2

    .line 31
    new-array v12, v10, [B

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v1, v12, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 37
    :cond_2
    const/4 v12, 0x0

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v13, v1, v13

    .line 40
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 41
    :cond_3
    const-string v1, "KakaScanEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPosterFeature\u89e3\u6790\u6d77\u62a5\u7279\u5f81\u7801\u5931\u8d25\uff0ctime"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v10           #featureLen:I
    .end local v12           #features:[B
    :catch_0
    move-exception v9

    .line 47
    .local v9, e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v9}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 48
    const-string v1, "cm_"

    const-string v2, "failed to load static lib poster scanning"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v9           #e:Ljava/lang/UnsatisfiedLinkError;
    .restart local v10       #featureLen:I
    .restart local v12       #features:[B
    :cond_4
    :try_start_1
    const-string v1, "KakaScanEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPosterFeature\u89e3\u6790\u6d77\u62a5\u7279\u5f81\u7801\u6210\u529ftime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getPosterFeature([BII)Ljava/lang/String;
    .locals 11
    .parameter "jpgstream"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    array-length v8, p0

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 63
    :cond_0
    const-string v3, ""

    .line 91
    :goto_0
    return-object v3

    .line 66
    :cond_1
    const-string v3, ""

    .line 67
    .local v3, featureStr:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 68
    .local v6, time:J
    const/16 v8, 0x2400

    new-array v1, v8, [B

    .line 70
    .local v1, featureBuffer:[B
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/etao/kaka/decode/KakaScanEngine;->imgTest([BII[B)I

    move-result v2

    .line 72
    .local v2, featureLen:I
    new-array v4, v2, [B

    .line 73
    .local v4, features:[B
    const/4 v5, 0x0

    .local v5, idx:I
    :goto_1
    if-lt v5, v2, :cond_3

    .line 76
    const/4 v1, 0x0

    .line 77
    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4

    .line 82
    :cond_2
    const-string v8, "KakaScanEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPosterFeature\u89e3\u6790\u6d77\u62a5\u7279\u5f81\u7801\u5931\u8d25\uff0ctime"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v2           #featureLen:I
    .end local v4           #features:[B
    .end local v5           #idx:I
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 89
    const-string v8, "cm_"

    const-string v9, "failed to load static lib poster scanning"

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    .restart local v2       #featureLen:I
    .restart local v4       #features:[B
    .restart local v5       #idx:I
    :cond_3
    :try_start_1
    aget-byte v8, v1, v5

    aput-byte v8, v4, v5

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    :cond_4
    const-string v8, "KakaScanEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPosterFeature\u89e3\u6790\u6d77\u62a5\u7279\u5f81\u7801\u6210\u529ftime="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "----"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static native imgTest([BII[B)I
.end method

.method private static native initAr()I
.end method
