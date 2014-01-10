.class public Lcom/etao/kakalib/util/common/StringEncodeUtil;
.super Ljava/lang/Object;
.source "StringEncodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringEncode([B)Ljava/lang/String;
    .locals 3
    .parameter "needGuessEncodeData"

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 14
    .local v1, encodeString:Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    if-lez v2, :cond_0

    .line 15
    invoke-static {p0}, Lcom/etao/kakalib/util/StringEncodeUtils;->guessEncoding([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    const-string v1, ""

    .line 23
    :cond_1
    return-object v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
