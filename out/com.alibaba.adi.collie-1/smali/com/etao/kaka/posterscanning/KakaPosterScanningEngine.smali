.class public final Lcom/etao/kaka/posterscanning/KakaPosterScanningEngine;
.super Ljava/lang/Object;
.source "KakaPosterScanningEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KakaPosterScanningEngine"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    :try_start_0
    const-string v1, "PosterScanning"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 19
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 21
    const-string v1, "cm_"

    const-string v2, "failed to load static lib poster scanning"

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native destroyAr()I
.end method

.method public static getPosterFeature([BII)Ljava/lang/String;
    .locals 11
    .parameter "jpgstream"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    .line 35
    if-eqz p0, :cond_0

    array-length v8, p0

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 36
    :cond_0
    const-string v3, ""

    .line 65
    :goto_0
    return-object v3

    .line 39
    :cond_1
    const-string v3, ""

    .line 40
    .local v3, featureStr:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 41
    .local v6, time:J
    const/16 v8, 0x2400

    new-array v1, v8, [B

    .line 43
    .local v1, featureBuffer:[B
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/etao/kaka/posterscanning/KakaPosterScanningEngine;->imgTest([BII[B)I

    move-result v2

    .line 45
    .local v2, featureLen:I
    new-array v4, v2, [B

    .line 46
    .local v4, features:[B
    const/4 v5, 0x0

    .local v5, idx:I
    :goto_1
    if-lt v5, v2, :cond_3

    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4

    .line 55
    :cond_2
    const-string v8, "KakaPosterScanningEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPosterFeature\u89e3\u6790\u6d77\u62a5\u7279\u5f81\u7801\u5931\u8d25\uff0ctime"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v2           #featureLen:I
    .end local v4           #features:[B
    .end local v5           #idx:I
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 63
    const-string v8, "cm_"

    const-string v9, "failed to load static lib poster scanning"

    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    .restart local v2       #featureLen:I
    .restart local v4       #features:[B
    .restart local v5       #idx:I
    :cond_3
    :try_start_1
    aget-byte v8, v1, v5

    aput-byte v8, v4, v5

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    :cond_4
    const-string v8, "KakaPosterScanningEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPosterFeature\u89e3\u6790\u6d77\u62a5\u7279\u5f81\u7801\u6210\u529ftime="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "----"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 58
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-static {v8, v9}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static native imgTest([BII[B)I
.end method

.method private static native initAr()I
.end method
