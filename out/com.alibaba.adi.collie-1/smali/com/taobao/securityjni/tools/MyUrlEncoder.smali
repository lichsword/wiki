.class public Lcom/taobao/securityjni/tools/MyUrlEncoder;
.super Ljava/lang/Object;
.source "MyUrlEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "word"
    .parameter "encoder"

    .prologue
    .line 20
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 27
    :goto_0
    return-object v1

    .line 21
    :cond_0
    const-string v1, ""

    .line 23
    .local v1, tmp:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "word"
    .parameter "encoder"

    .prologue
    .line 8
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 15
    .end local p0
    :goto_0
    return-object p0

    .line 10
    .restart local p0
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 11
    .local v1, tmp:Ljava/lang/String;
    move-object p0, v1

    goto :goto_0

    .line 12
    .end local v1           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 13
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
